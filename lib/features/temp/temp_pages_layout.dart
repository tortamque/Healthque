import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:healthque/core/extensions/color.dart';
import 'package:healthque/core/extensions/context.dart';

class TempPagesLayout extends StatelessWidget {
  const TempPagesLayout({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final activeColor = context.theme.primaryColor;
    final inactiveColor = context.theme.iconTheme.color;
    final backgroundColor = context.theme.scaffoldBackgroundColor;
    final tabBackgroundColor = context.theme.primaryColor.customOpacity(0.1);

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: GNav(
            gap: 8,
            selectedIndex: navigationShell.currentIndex,
            onTabChange: (index) => navigationShell.goBranch(index),
            backgroundColor: backgroundColor,
            color: inactiveColor,
            activeColor: activeColor,
            tabBackgroundColor: tabBackgroundColor,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            textStyle: context.theme.textTheme.bodyMedium?.copyWith(
              color: activeColor,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              GButton(
                icon: Icons.dashboard_rounded,
                text: context.strings.dashboard,
                iconActiveColor: activeColor,
                iconColor: Colors.grey.shade500,
              ),
              GButton(
                icon: Icons.directions_run_rounded,
                text: context.strings.activity,
                iconActiveColor: activeColor,
                iconColor: Colors.grey.shade500,
              ),
              GButton(
                icon: Icons.health_and_safety_rounded,
                text: context.strings.health,
                iconActiveColor: activeColor,
                iconColor: Colors.grey.shade500,
              ),
              GButton(
                icon: Icons.person_outline_rounded,
                text: context.strings.profile,
                iconActiveColor: activeColor,
                iconColor: Colors.grey.shade500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
