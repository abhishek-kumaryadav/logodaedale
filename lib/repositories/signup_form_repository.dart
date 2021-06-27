import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logodaedale/models/signup_form_model/signup_form_model.dart';

abstract class BaseSignupFormRepository {
  Future<void> setValues(
      {String username = "default",
      String email = "default",
      String password = "default"});
}

final signupFormRepositoryProvider =
    Provider<SignupFormRepository>((ref) => SignupFormRepository(ref.read));

class SignupFormRepository implements BaseSignupFormRepository {
  final Reader _read;
  SignupFormRepository(this._read);

  late SignupFormModel _signupFormModel;
  SignupFormModel get signupFormModel => _signupFormModel;
  @override
  Future<void> setValues(
      {String username = "default",
      String email = "default",
      String password = "default"}) async {
    _signupFormModel =
        SignupFormModel(username: username, password: password, email: email);
  }
}
