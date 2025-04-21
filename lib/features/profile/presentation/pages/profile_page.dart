import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/profile/profile.dart';
import 'package:toastification/toastification.dart';

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
                title: context.strings.changeLanguage,
                subtitle: context.strings.changeLanguageDesc,
                icon: Icons.flag_rounded,
                onTap: () => context.push(Routes.localeSettingsPage),
              ),
              ActionCard(
                title: context.strings.editProfile,
                subtitle: context.strings.editProfileDesc,
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
              BlocConsumer<FirebaseSyncCubit, FirebaseSyncState>(
                listener: (context, state) {
                  if (state.errorMessage != null) {
                    toastification.show(
                      context: context,
                      style: ToastificationStyle.simple,
                      type: ToastificationType.success,
                      title: Text(context.strings.anErrorOccurred(state.errorMessage!)),
                      alignment: Alignment.bottomCenter,
                      closeButton: ToastCloseButton(
                        buttonBuilder: (context, onClose) => const SizedBox.shrink(),
                      ),
                      autoCloseDuration: const Duration(seconds: 3),
                    );
                  } else if (state.syncSuccess) {
                    toastification.show(
                      context: context,
                      style: ToastificationStyle.simple,
                      type: ToastificationType.success,
                      title: Text(context.strings.dataSyncedSuccessfully),
                      alignment: Alignment.bottomCenter,
                      closeButton: ToastCloseButton(
                        buttonBuilder: (context, onClose) => const SizedBox.shrink(),
                      ),
                      autoCloseDuration: const Duration(seconds: 3),
                    );
                  }
                },
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: UnifiedCircularProgressIndicator(),
                    );
                  }
                  return ActionCard(
                    title: context.strings.syncData,
                    subtitle: context.strings.syncDataDecs,
                    icon: Icons.sync_rounded,
                    onTap: () => context.read<FirebaseSyncCubit>().syncUserData(),
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
