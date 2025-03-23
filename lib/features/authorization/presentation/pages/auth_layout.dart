import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8),
        child: GNav(
          gap: 8,
          selectedIndex: navigationShell.currentIndex,
          onTabChange: (index) => navigationShell.goBranch(index),
          tabs: const [
            GButton(icon: Icons.login, text: 'Auth'),
            GButton(icon: Icons.person, text: 'User Info'),
          ],
        ),
      ),
    );
  }
}
