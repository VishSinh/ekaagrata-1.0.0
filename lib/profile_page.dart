import 'package:flutter/material.dart';
import 'reusuable_card.dart';
import 'bottom_nav_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/avatar.jpg'),
                        radius: 70.0,
                      ),
                      Text(
                        'Vishal Sinha',
                        style: TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Your XP :             ',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'XP :             ',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'StXP :             ',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
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
