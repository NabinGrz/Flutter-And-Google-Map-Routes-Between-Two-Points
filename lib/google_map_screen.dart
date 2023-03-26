import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:routebetweentwopoints/repository/repo.dart';
import 'package:routebetweentwopoints/utils.dart';

Color color = const Color(0xff33ba79);

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  BitmapDescriptor? currentLocationIcon;
  BitmapDescriptor? secondLocationIcon;
  TextEditingController latitudeController =
      TextEditingController(text: "27.744591");
  TextEditingController longitudeController =
      TextEditingController(text: "85.300163");
  Polyline? routePolyline;
  bool isRouteCreating = false;
  late final GoogleMapController _controller;
  Position? _currentPosition;
  LatLng _currentLatLng = const LatLng(27.671332124757402, 85.3125417636781);
  Marker? secondMarker;
  @override
  void initState() {
    _getLocation();
    super.initState();
  }

  _getLocation() async {
    var locationPermissions = await Geolocator.checkPermission();
    if (locationPermissions.name != LocationPermission.denied ||
        locationPermissions.name != LocationPermission.deniedForever) {
      _currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      _currentLatLng =
          LatLng(_currentPosition!.latitude, _currentPosition!.longitude);
      setState(() {});
      currentLocationIcon = BitmapDescriptor.fromBytes(await getBytesFromAsset(
          path: "assets/images/currentLocation.png", width: 140));
    } else {
      await Geolocator.requestPermission();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: _currentPosition == null
            ? const Center(child: CircularProgressIndicator())
            : Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 100),
                      child: googleMapWidget()),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 6,
                          color: Colors.white,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                latitudelongitudeField(true),
                                const SizedBox(
                                  height: 4,
                                ),
                                latitudelongitudeField(false),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        confirmButton(),
                        const SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget latitudelongitudeField(bool isLat) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12)),
        child: TextFormField(
            style: GoogleFonts.lato(),
            controller: isLat ? latitudeController : longitudeController,
            keyboardType: const TextInputType.numberWithOptions(
                decimal: true, signed: true),
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              isDense: false,
              fillColor: Colors.transparent,
              filled: false,
              prefixIcon: Icon(CupertinoIcons.search, color: color),
              suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      isLat
                          ? latitudeController.clear()
                          : longitudeController.clear();
                    });
                  },
                  child: const Icon(Icons.clear, color: Colors.red)),
              hintText: isLat ? "Enter latitude" : "Enter longtitude",
              hintStyle: GoogleFonts.lato(),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            )));
  }

  Widget googleMapWidget() {
    return GoogleMap(
      myLocationButtonEnabled: false,
      myLocationEnabled: false,
      zoomControlsEnabled: false,
      initialCameraPosition: CameraPosition(zoom: 16, target: _currentLatLng),
      onMapCreated: (controller) async {
        setState(() {
          _controller = controller;
        });
      },
      polylines: routePolyline == null ? {} : {routePolyline!},
      markers: {
        Marker(
            markerId: const MarkerId("1"),
            icon: currentLocationIcon ?? BitmapDescriptor.defaultMarker,
            position: _currentLatLng),
        secondMarker ?? const Marker(markerId: MarkerId("0")),
      },
    );
  }

  Widget confirmButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              minimumSize: const Size(double.infinity, 40)),
          onPressed: () async {
            isRouteCreating = true;
            var pointLatLng = await Repo.getRouteBetweenTwoPoints(
                start: _currentLatLng,
                end: LatLng(double.parse(latitudeController.text),
                    double.parse(longitudeController.text)),
                color: color);

            print("$pointLatLng");
            isRouteCreating = false;

            setState(() {});
            secondLocationIcon = BitmapDescriptor.fromBytes(
                await getBytesFromAsset(
                    path: "assets/images/secondMarker.png", width: 140));
            routePolyline = Polyline(
                polylineId: const PolylineId("Routes"),
                color: const Color(0xff4a54cd),
                width: 4,
                points: pointLatLng
                    .map((e) => LatLng(e.latitude, e.longitude))
                    .toList());
            updateCameraLocationToZoomBetweenTwoMarkers(
                _currentLatLng,
                LatLng(double.parse(latitudeController.text),
                    double.parse(longitudeController.text)),
                _controller);
            secondMarker = Marker(
                markerId: const MarkerId("12"),
                icon: secondLocationIcon ?? BitmapDescriptor.defaultMarker,
                position: LatLng(double.parse(latitudeController.text),
                    double.parse(longitudeController.text)));
            setState(() {});
          },
          child: isRouteCreating
              ? const CircularProgressIndicator()
              : Text(
                  "CONFIRM",
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )),
    );
  }
}
