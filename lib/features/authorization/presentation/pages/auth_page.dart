import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/features/authorization/authorization.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth'),
      ),
      body: Center(
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state case AuthStateFailure(:final message)) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            }
          },
          builder: (context, state) {
            return switch (state) {
              AuthStateInitial() || AuthStateUnauthenticated() => _SignInButton(),
              AuthStateLoading() => const CircularProgressIndicator(),
              AuthStateFailure(:final message) => Text('Error: $message'),
              AuthStateAuthenticated(:final user) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Signed in as: ${user.displayName}'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context.read<AuthCubit>().signOut(),
                      child: const Text('Logout'),
                    ),
                  ],
                ),
            };
          },
        ),
      ),
    );
  }
}

class _SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<AuthCubit>().signInWithGoogle(),
      child: const Text('Sign in with Google'),
    );
  }
}
