import 'dart:math';
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  String? name = stdin.readLineSync();

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text(name!),
    );
  }
}
