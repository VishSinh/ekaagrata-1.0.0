import 'package:flutter/material.dart';
import 'bottom_navigation_button.dart';
import 'panel_page.dart';
import 'front_page.dart';
import 'profile_page.dart';
import 'graph_page.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: Color(0xFF1363DF),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavigationButton(
              icon: Icons.timer,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FrontPage();
                    },
                  ),
                );
              },
            ),
            BottomNavigationButton(
              icon: Icons.auto_graph,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return GraphPage();
                    },
                  ),
                );
              },
            ),
            BottomNavigationButton(
              icon: Icons.newspaper,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PanelPage();
                    },
                  ),
                );
              },
            ),
            BottomNavigationButton(
              icon: Icons.face,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfilePage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
