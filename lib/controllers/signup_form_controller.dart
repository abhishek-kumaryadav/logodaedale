// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:logodaedale/models/signup_form_model/signup_form_model.dart';

// final signupFormControllerProvider =StateNotifierProvider((ref) => return SignupFormController(ref.read));

// class SignupFormController extends StateNotifier<SignupFormModel> {
//   final Reader _read;
//   SignupFormController(this._read) : super(SignupFormModel());

//   Future<void> retrieveDetails(String? username,String? password, String? email) async {

//   }

//   Future<void> switchTheme() async {
//     try {
//       await _read(themeRepositoryProvider).switchState();
//       retrieveMode();
//     } on Exception {
//       state = false;
//     }
//   }
// }
