
import 'package:calculator/screens/converter-screen.dart';
import 'package:flutter/material.dart';

import 'screens/home-screen.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => HomeScreen(),
      '/converter': (context) => ConverterScreen(),
    },
  ));
}
