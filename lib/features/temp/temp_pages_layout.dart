import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class TempPagesLayout extends StatelessWidget {
  const TempPagesLayout({super.key, required this.navigationShell});

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
            GButton(icon: Icons.login, text: 'Temp Page 1'),
            GButton(icon: Icons.person, text: 'Temp Page 2'),
            GButton(icon: Icons.person, text: 'Temp Page 3'),
          ],
        ),
      ),
    );
  }
}
