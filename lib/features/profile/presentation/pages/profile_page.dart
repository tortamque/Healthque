import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/profile/profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.profile),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ActionCard(
                title: 'Edit Profile',
                subtitle: 'Edit your profile information',
                icon: Icons.person_rounded,
                onTap: () => context.push(Routes.editProfilePage),
              ),
              ActionCard(
                title: context.strings.changeThemeColor,
                subtitle: context.strings.changeThemeColorDesc,
                icon: Icons.color_lens_rounded,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => const ThemeColorPickerBottomSheet(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
