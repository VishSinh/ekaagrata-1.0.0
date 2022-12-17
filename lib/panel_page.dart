import 'dart:math';

import 'package:ekaagrata_1_0_0/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'reusuable_card.dart';

class PanelPage extends StatefulWidget {
  PanelPage({required this.quoteData});
  final quoteData;

  @override
  State<PanelPage> createState() => _PanelPageState();
}

class _PanelPageState extends State<PanelPage> {
  late String quoteText1, quoteText2, quoteText3, quoteText4;
  late String author1, author2, author3, author4;

  @override
  void initState() {
    super.initState();
    updateUI(widget.quoteData);
  }

  void updateUI(dynamic quoteData) {
    int ran1 = Random().nextInt(19);
    int ran2 = Random().nextInt(19);
    int ran3 = Random().nextInt(19);
    int ran4 = Random().nextInt(19);
    quoteText1 = quoteData['results'][ran1]['content'];
    author1 = quoteData['results'][ran1]['author'];
    quoteText2 = quoteData['results'][ran2]['content'];
    author2 = quoteData['results'][ran2]['author'];
    quoteText3 = quoteData['results'][ran3]['content'];
    author3 = quoteData['results'][ran3]['author'];
    quoteText4 = quoteData['results'][ran4]['content'];
    author4 = quoteData['results'][ran4]['author'];
    print(quoteText1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReusableCard(
          cardChild: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PanelCard(quoteText: quoteText1, author: author1),
                    PanelCard(quoteText: quoteText2, author: author2),
                    PanelCard(quoteText: quoteText3, author: author3),
                    PanelCard(quoteText: quoteText4, author: author4),
                  ],
                ),
              ),
              BottomNavBar()
            ],
          ),
          colour: Color(0xFF0A0E21),
        ),
      ),
    );
  }
}

class PanelCard extends StatelessWidget {
  PanelCard({required this.quoteText, required this.author});
  late String quoteText, author;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xFF06283D),
          borderRadius: BorderRadius.circular(10.0),
        ),
        // height: 150.0,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 10.0),
              Text(
                quoteText,
                style: TextStyle(
                  fontSize: 18.0,
                  // color: Colors.grey[900],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'by - ${author}',
                style: TextStyle(
                  fontSize: 16.0,
                  // color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}
