import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

LatLng location(String input) {
  // I will take input string and saprate them with a coma and convert it into lat lng
  List<String> parts = input.split(',');
  double latitude = double.parse(parts[0].trim());
  double longitude = double.parse(parts[1].trim());
  return LatLng(latitude, longitude);
}
