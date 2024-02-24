import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? latlngToString(LatLng? inputLocation) {
  // return inputLocation as string
  if (inputLocation == null) {
    return null;
  }
  return '${inputLocation.latitude},${inputLocation.longitude}';
}

List<LatLng>? listDoubleToLatlng(
  List<double>? latitude,
  List<double>? longitude,
) {
  // return latitudes and longitudes combined
  if (latitude == null || longitude == null) {
    return null;
  }
  if (latitude.length != longitude.length) {
    throw ArgumentError(
        'Latitude and longitude lists must have the same length');
  }
  final List<LatLng> latLngList = [];
  for (int i = 0; i < latitude.length; i++) {
    latLngList.add(LatLng(latitude[i], longitude[i]));
  }
  return latLngList;
}
