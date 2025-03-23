import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/core/localization/generated/l10n.dart';
import 'package:healthque/features/authorization/presentation/bloc/auth_bloc.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(),
      child: MaterialApp(
        title: 'Google Sign In Demo',
        localizationsDelegates: [AppLocalizationDelegate()],
        supportedLocales: Strings.delegate.supportedLocales,
        locale: const Locale('en'),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
