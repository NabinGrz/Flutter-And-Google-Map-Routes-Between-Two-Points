import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'google_map_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    _onAppResumed(state);
  }

  void _onAppResumed(AppLifecycleState state) async {
    var locationPermission = await Geolocator.checkPermission();
    if (state == AppLifecycleState.resumed) {
      //**Refer to this link for permission handling: https://davidserrano.io/best-way-to-handle-permissions-in-your-flutter-app
      //** FOR IOS
      if (Platform.isIOS) {
        if (locationPermission == LocationPermission.always ||
            locationPermission == LocationPermission.whileInUse) {
        } else {
          await Geolocator.checkPermission();
        }
        //** FOR ANDROID
      } else if (Platform.isAndroid) {
        if (locationPermission == LocationPermission.always ||
            locationPermission == LocationPermission.whileInUse) {
        } else {}
      }
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
        // fontFamily: ,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const GoogleMapScreen(),
    );
  }
}
