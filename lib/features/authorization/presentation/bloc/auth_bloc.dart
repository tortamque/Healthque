import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  late final StreamSubscription<User?> _authSub;

  AuthCubit() : super(const AuthState.loading()) {
    _authSub = FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        emit(AuthState.authenticated(user));
      } else {
        emit(const AuthState.unauthenticated());
      }
    });
  }

  @override
  Future<void> close() {
    _authSub.cancel();
    return super.close();
  }

  Future<void> signInWithGoogle() async {
    emit(const AuthState.loading());
    try {
      final googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        emit(const AuthState.unauthenticated());
        return;
      }

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      final user = userCredential.user;
      if (user == null) {
        emit(const AuthState.failure('Sign in failed.'));
      } else {
        //emit(AuthState.authenticated(user));
      }
    } catch (e) {
      emit(AuthState.failure(e.toString()));
    }
  }

  Future<void> signOut() async {
    emit(const AuthState.loading());
    try {
      await FirebaseAuth.instance.signOut();
      await GoogleSignIn().signOut();
      //emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(AuthState.failure(e.toString()));
    }
  }
}
