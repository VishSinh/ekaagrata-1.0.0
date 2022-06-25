import 'package:ekaagrata_1_0_0/bottom_nav_bar.dart';
import 'package:ekaagrata_1_0_0/front_page.dart';
import 'package:flutter/material.dart';
import 'bottom_navigation_button.dart';
import 'reusuable_card.dart';
import 'front_page.dart';

class PanelPage extends StatefulWidget {
  const PanelPage({Key? key}) : super(key: key);

  @override
  State<PanelPage> createState() => _PanelPageState();
}

class _PanelPageState extends State<PanelPage> {
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
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      PanelCard(),
                      PanelCard(),
                      PanelCard(),
                      PanelCard(),
                    ],
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

class PanelCard extends StatelessWidget {
  const PanelCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xFF06283D),
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 150.0,
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 10.0),
            Text(
              'Title Heading',
              style: TextStyle(
                fontSize: 30.0,
                // color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
              style: TextStyle(
                fontSize: 20.0,
                // color: Colors.grey[900],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
