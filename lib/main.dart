import 'package:ekaagrata_1_0_0/graph_page.dart';
import 'package:ekaagrata_1_0_0/panel_page.dart';
import 'profile_page.dart';
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
      routes: {
        '/': (context) => const FrontPage(),
        '/second': (context) => const GraphPage(),
        '/third': (context) => const PanelPage(),
        '/fourth': (context) => const ProfilePage(),
      },
      initialRoute: '/',
    );
  }
}
