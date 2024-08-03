import 'package:flutter/material.dart';
import 'package:pip/pip_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Picture in Picture',
      debugShowCheckedModeBanner: false,
      home: PIP(),
    );
  }
}


