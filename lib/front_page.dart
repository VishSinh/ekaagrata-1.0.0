import 'package:flutter/material.dart';
import 'reusuable_card.dart';
import 'bottom_navigation_button.dart';
import 'panel_page.dart';
import 'bottom_nav_bar.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
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
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('images/timer.png'),
                      ElevatedButton(onPressed: () {}, child: Text('Record')),
                      // SizedBox(
                      //   height: 200.0,
                      // ),
                    ],
                  ),
                ),
                BottomNavBar(),
              ],
            ),
            colour: Color(0xFF0A0E21),
          ),
        ),
      ),
    );
  }
}
