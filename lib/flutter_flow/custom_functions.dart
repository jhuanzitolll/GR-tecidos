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

String? newNumeroconferido(String? numeroconferido) {
  // preciso que esta funçao retire todos os caracteres nao numericos do argumento numeroconferido
  if (numeroconferido == null) {
    return null;
  }

  return numeroconferido.replaceAll(RegExp(r'[^0-9]'), '');
}
