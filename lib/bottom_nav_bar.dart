import 'package:flutter/material.dart';
import 'bottom_navigation_button.dart';

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
              onTap: () => Navigator.pushNamed(context, '/'),
            ),
            BottomNavigationButton(
              icon: Icons.auto_graph,
              onTap: () => Navigator.pushNamed(context, '/second'),
            ),
            BottomNavigationButton(
              icon: Icons.newspaper,
              onTap: () => Navigator.pushNamed(context, '/third'),
            ),
            BottomNavigationButton(
              icon: Icons.face,
              onTap: () => Navigator.pushNamed(context, '/fourth'),
            ),
          ],
        ),
      ),
    );
  }
}
