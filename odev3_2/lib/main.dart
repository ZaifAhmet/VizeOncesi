import 'package:flutter/material.dart';
import 'package:odev3_2/odev3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: odev3(),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final String metin;

  const MyText({
    super.key,
    required this.metin,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      metin,
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.center,
      selectionColor: Colors.white,
    );
  }
}
