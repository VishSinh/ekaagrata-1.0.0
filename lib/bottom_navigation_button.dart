import 'package:flutter/material.dart';

class BottomNavigationButton extends StatelessWidget {
  const BottomNavigationButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        icon,
      ),
      onTap: onTap,
    );
  }
}
