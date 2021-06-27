class SignupFormModel {
  final String username;
  final String password;
  final String email;

  SignupFormModel(
      {this.username = "default",
      this.password = "default",
      this.email = "default"});
}
