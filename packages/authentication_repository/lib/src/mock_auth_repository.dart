import 'dart:async';

import 'package:authentication_repository/src/authentication_repository.dart';
import 'package:authentication_repository/src/models/models.dart';
import 'package:flutter/foundation.dart';

class MockAuthenticateRepo implements IAuthenticationRepository {
  final StreamController<User> _streamController = StreamController.broadcast();

  @override
  bool isWeb = kIsWeb;

  @override
  Future<void> changeAvatar(String avtUrl) {
    throw UnimplementedError();
  }

  @override
  User get currentUser => const User(id: 'id');

  @override
  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> logInWithGoogle() {
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() {
    throw UnimplementedError();
  }

  @override
  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    await sendVerificationEmail();

    _streamController.add(const User(id: 'asd'));
  }

  @override
  Stream<User> get user => _streamController.stream;

  @override
  Future<void> verifyEmail(String code) async {
    if (code == '123456') {
      _streamController.add(const User(id: 'asd', verified: true));
    } else {
      throw Exception('wrong password');
    }
  }

  @override
  Future<void> sendVerificationEmail() async {
    await Future.value('This is verification code');
  }

  @override
  Future<void> forgotPassword(String email) {
    throw UnimplementedError();
  }
}
