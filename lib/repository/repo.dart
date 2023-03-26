import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

import '../constants/string_constants.dart';
import '../model/place_model/place_model.dart';

class Repo {
  Repo._();
  static Future<PredictionModel?> placeAutoComplete(
      {required String placeInput}) async {
    try {
      Map<String, dynamic> querys = {
        'input': placeInput,
        'key': AppString.googleMapApiKey
      };
      final url = Uri.https(
          "maps.googleapis.com", "maps/api/place/autocomplete/json", querys);
      final response = await http.get(url);
      if (response.statusCode == 200) {
        return PredictionModel.fromJson(jsonDecode(response.body));
      } else {
        response.body;
      }
    } on Exception catch (e) {
      print(e.toString());
    }
    return null;
  }

  static Future<List<PointLatLng>> getRouteBetweenTwoPoints(
      {required LatLng start,
      required LatLng end,
      required Color color}) async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult res = await polylinePoints.getRouteBetweenCoordinates(
        AppString.googleMapApiKey,
        PointLatLng(start.latitude, start.longitude),
        PointLatLng(end.latitude, end.longitude));
    if (res.points.isNotEmpty) {
      return res.points;
    } else {
      return [];
    }
  }
}
