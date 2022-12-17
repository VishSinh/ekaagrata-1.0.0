import 'dart:convert';
import 'package:ekaagrata_1_0_0/panel_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:math';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    quoteGenerator();
  }

  String nameOfPokemon = 'Generating Pokemon';

  Future quoteGenerator() async {
    var id = Random().nextInt(248) + 1;
    var url = Uri.parse('https://quotable.io/quotes?page=1');

    http.Response response = await http.get(url);
    String data = response.body;

    // ignore: use_build_context_synchronously
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return PanelPage(quoteData: jsonDecode(data));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SpinKitFoldingCube(
        color: Colors.white,
        size: 50.0,
      ),
    );
  }
}
