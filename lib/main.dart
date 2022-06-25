import 'package:flutter/material.dart';
import 'front_page.dart';

void main() => runApp(const EkaagrataApp());

class EkaagrataApp extends StatelessWidget {
  const EkaagrataApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: FrontPage(),
    );
  }
}