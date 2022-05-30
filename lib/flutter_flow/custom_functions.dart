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

bool previewSubida(String imagen) {
  // if image path is empty return false
  if (imagen.isEmpty) {
    return false;
  } else {
    return true;
  }
}

String seleccionImagenMicro(
  String image1,
  String image2,
) {
  // find which image path is not empty and return it
  String result;
  if (image1 != null && image1.length != 0) {
    result = image1;
  }
  if (image2 != null && image2.length != 0) {
    result = image2;
  }
  return result;
}

bool getCambiosCategorias(
  List<String> newCategorias,
  List<String> userCategorias,
) {
  // if the 2 lists are diferent return true
  userCategorias.sort();
  newCategorias.sort();
  return userCategorias.join() != newCategorias.join();
}
