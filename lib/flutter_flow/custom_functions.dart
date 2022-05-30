import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

List<String> getListadoCategorias(List<String> listado) {
  // get list and return another with same items
  List<String> data = new List<String>();
  data.length = listado.length;
  for (int i = 0; i < data.length; i++) {
    data[i] = listado[i];
  }
  return data;
}
