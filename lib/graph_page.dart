import 'package:ekaagrata_1_0_0/bottom_nav_bar.dart';
import 'package:ekaagrata_1_0_0/front_page.dart';
import 'package:flutter/material.dart';
import 'bottom_navigation_button.dart';
import 'reusuable_card.dart';
import 'front_page.dart';

class GraphPage extends StatefulWidget {
  const GraphPage({Key? key}) : super(key: key);

  @override
  State<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  void newFunction() {
    print('meow');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ReusableCard(
            cardChild: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset('images/stock-graph.png')],
                  ),
                ),
                BottomNavBar()
              ],
            ),
            colour: Color(0xFF0A0E21),
          ),
        ),
      ),
    );
  }
}
