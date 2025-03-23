import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/features/authorization/authorization.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return switch (state) {
          AuthStateAuthenticated(:final user) => Scaffold(
              appBar: AppBar(title: const Text('User Info')),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (user.photoURL != null)
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(user.photoURL!),
                      ),
                    const SizedBox(height: 16),
                    Text('Name: ${user.displayName ?? 'N/A'}'),
                    const SizedBox(height: 8),
                    Text('Email: ${user.email ?? 'N/A'}'),
                  ],
                ),
              ),
            ),
          _ => Scaffold(
              appBar: AppBar(title: const Text('User Info')),
              body: const Center(child: CircularProgressIndicator()),
            ),
        };
      },
    );
  }
}
