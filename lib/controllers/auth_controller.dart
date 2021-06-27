import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logodaedale/repositories/auth_repository.dart';

final authControllerProvider = StateNotifierProvider(
  (ref) => AuthController(ref.read),
);

class AuthController extends StateNotifier<User?> {
  final Reader _read;
  StreamSubscription<User?>? _authStateChangesSubscription;

  AuthController(this._read) : super(null) {
    _authStateChangesSubscription?.cancel();
    _authStateChangesSubscription = _read(authRepositoryProvider)
        .authStateChanges
        .listen((user) => state = user);
  }
  @override
  void dispose() {
    _authStateChangesSubscription?.cancel();
    super.dispose();
  }

  // Future<void> appStarted() async {
  //   User? user = _read(authRepositoryProvider).getCurrentUser();
  // }

  Future<void> createUserWithEmailAndPassword(
          String email, String password) async =>
      await _read(authRepositoryProvider)
          .createUserWithEmailAndPassword(email, password);

  Future<void> signInWithEmailAndPassword(
          String email, String password) async =>
      await _read(authRepositoryProvider)
          .signInWithEmailAndPassword(email, password);

  bool get emailVerified => _read(authRepositoryProvider).emailVerified;

  Future<void> signOut() async => await _read(authRepositoryProvider).signOut();
}
