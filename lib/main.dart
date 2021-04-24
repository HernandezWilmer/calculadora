import 'package:flutter/material.dart';
import 'package:flutter_app/page/home-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}
