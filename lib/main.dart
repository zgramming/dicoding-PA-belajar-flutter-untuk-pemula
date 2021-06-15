import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'src/app.dart';

Future<void> main() async {
  await initializeDateFormatting();
  colorPallete.configuration(
    primaryColor: const Color(0xFFE15E39),
    accentColor: const Color(0xFFFBC246),
    scaffoldBackgroundColor: const Color(0xFFFFF6F0),
    monochromaticColor: const Color(0xFFC9441E),
  );
  runApp(MyApp());
}
