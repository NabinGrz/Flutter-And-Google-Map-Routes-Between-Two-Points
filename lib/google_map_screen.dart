import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:routebetweentwopoints/repository/repo.dart';

import 'model/place_model/place_model.dart';

Color color = const Color(0xfffe8903);

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  BitmapDescriptor? currentLocation;
  TextEditingController placeController = TextEditingController();
  Polyline? routePolyline;
  late final GoogleMapController _controller;
  Position? _currentPosition;
  LatLng _currentLatLng = const LatLng(27.671332124757402, 85.3125417636781);

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  getLocation() async {
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    var pp = await Geolocator.checkPermission();
    // if (pp.name == LocationPermission.always) {
    _currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    _currentLatLng =
        LatLng(_currentPosition!.latitude, _currentPosition!.longitude);
    print("$_currentLatLng");
    setState(() {});
    // } else {
    //   await Geolocator.requestPermission();
    // }
  }

  Widget autoComplete() {
    return Container(
      // height: 50,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12)),
      child: TypeAheadFormField<Description?>(
        onSuggestionSelected: (suggestion) {
          setState(() {
            placeController.text =
                suggestion?.structured_formatting?.main_text ?? "";
          });
        },
        getImmediateSuggestions: true,
        keepSuggestionsOnLoading: true,
        textFieldConfiguration: TextFieldConfiguration(
            style: GoogleFonts.lato(),
            controller: placeController,
            // style: GoogleFonts.poppins(),
            decoration: InputDecoration(
              isDense: false,
              fillColor: Colors.transparent,
              filled: false,
              prefixIcon: Icon(CupertinoIcons.search, color: color),
              suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      placeController.clear();
                    });
                  },
                  child: const Icon(Icons.clear, color: Colors.red)),
              // contentPadding:
              //     const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              hintText: "Where are you going?",
              hintStyle: GoogleFonts.lato(),

              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            )),
        itemBuilder: (context, Description? itemData) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 18,
                  color: Colors.grey,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${itemData?.structured_formatting?.main_text}",
                      style: const TextStyle(color: Colors.green),
                    ),
                    Text("${itemData?.structured_formatting?.secondary_text}"),
                    const Divider()
                  ],
                ),
              ],
            ),
          );
        },
        noItemsFoundBuilder: (context) {
          return Container();
          // return Wrap(
          //   children: const [
          //     Center(
          //         heightFactor: 2,
          //         child: Text(
          //           "Location Not Found!!",
          //           style: TextStyle(
          //             fontSize: 12,
          //           ),
          //         )),
          //   ],
          // );
        },
        suggestionsCallback: (String pattern) async {
          var predictionModel =
              await Repo.placeAutoComplete(placeInput: pattern);

          if (predictionModel != null) {
            return predictionModel.predictions!.where((element) => element
                .description!
                .toLowerCase()
                .contains(pattern.toLowerCase()));
          } else {
            return [];
          }
        },
      ),
    );
  }

  Widget locationsWidget() {
    return Container(
      margin: EdgeInsets.zero,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              spreadRadius: 1,
              offset: Offset(0, 4))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration:
                      BoxDecoration(color: color, shape: BoxShape.circle),
                ),
                const SizedBox(
                  width: 8,
                ),
                Wrap(
                  direction: Axis.vertical,
                  children: const [
                    Text(
                      "Current Location",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Samakhusi, Rehdon College",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Divider(
                height: 8,
                color: color.withOpacity(0.6),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      border: Border.all(color: color, width: 4),
                      shape: BoxShape.circle),
                ),
                const SizedBox(
                  width: 8,
                ),
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    const Text(
                      "Destination",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        placeController.text.isEmpty
                            ? "Select Destination"
                            : placeController.text,
                        overflow: TextOverflow.visible,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
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
            ? const Center(child: CircularProgressIndicator()
                //CircularProgressIndicator(),
                )
            : Stack(
                children: [
                  GoogleMap(
                    myLocationButtonEnabled: false,
                    myLocationEnabled: true,
                    zoomControlsEnabled: false,
                    initialCameraPosition:
                        CameraPosition(zoom: 16, target: _currentLatLng),
                    onMapCreated: (controller) async {
                      setState(() {
                        _controller = controller;
                      });
                      // String val = "json/google_map_dark_light.json";
                      // var c = await rootBundle.loadString(val);
                      // _controller.setMapStyle(c);
                    },
                    polylines: routePolyline == null ? {} : {routePolyline!},
                    markers: {
                      Marker(
                          markerId: const MarkerId("1"),
                          // icon: currentLocation!,
                          position: _currentLatLng)
                    },
                  ),
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
                            // height: MediaQuery.of(context).size.height * 0.21,
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
                                autoComplete(),
                                // InkWell(
                                //   child: Container(
                                //     height: 50,
                                //     width: double.infinity,
                                //     padding: const EdgeInsets.symmetric(
                                //         horizontal: 3, vertical: 4),
                                //     decoration: BoxDecoration(
                                //       color: Colors.grey[100],
                                //       borderRadius: BorderRadius.circular(4),
                                //     ),
                                //     child: Row(
                                //       children: [
                                //         Container(
                                //           height: 50,
                                //           width: 50,
                                //           decoration: BoxDecoration(
                                //             color: Colors.blueGrey[50],
                                //             shape: BoxShape.circle,
                                //           ),
                                //           child:
                                //               const Icon(CupertinoIcons.search),
                                //         ),
                                //         const Text(
                                //           "Where To?",
                                //           style: TextStyle(
                                //             fontWeight: FontWeight.w600,
                                //             fontSize: 18,
                                //           ),
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // ),

                                const SizedBox(
                                  height: 4,
                                ),
                                Container(
                                  height: 50,
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.history,
                                        color: Colors.grey[500],
                                        size: 30,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Baneshwor",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey[500],
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text(
                                            "Kathmandu, Nepal",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey[400],
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                // const SizedBox(
                                //   height: 40,
                                // ),
                              ],
                            ),
                          ),
                        ),
                        // autoComplete(),

                        // locationsWidget(),
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

  Widget confirmButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            minimumSize: const Size(double.infinity, 40)),
        onPressed: () async {
          var dd = await Repo.getRouteBetweenTwoPoints(
              start: const LatLng(27.671332124757402, 85.3125417636781),
              end: const LatLng(27.728159842107228, 85.31290177263814),
              color: color);
          routePolyline = Polyline(
              polylineId: const PolylineId("Routes"),
              color: color,
              width: 4,
              points: dd.map((e) => LatLng(e.latitude, e.longitude)).toList());
          setState(() {});
        },
        child: Text(
          "CONFIRM",
          style: GoogleFonts.lato(
            fontSize: 18,
            color: Colors.white,
          ),
        ));
  }
}
