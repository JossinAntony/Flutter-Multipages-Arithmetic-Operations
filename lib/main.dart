import 'package:flutter/material.dart';
import 'package:flutter_app_multipage/pages/add.dart';
import 'package:flutter_app_multipage/pages/divide.dart';
import 'package:flutter_app_multipage/pages/homepage.dart';
import 'package:flutter_app_multipage/pages/multiply.dart';
import 'package:flutter_app_multipage/pages/subtract.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divide();
  }
}
