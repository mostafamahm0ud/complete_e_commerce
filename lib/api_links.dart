class ApiLinks {

  static const String baseUrl = 'https://10.0.2.2:8080/complete_e_commerce';

  //============== Auth Endpoints=================
  static const String signUpEndpoint = '$baseUrl/auth/signup.php';
  static const String signInEndpoint = '$baseUrl/auth/signin.php';
  static const String veryfiycodeEndpoint = '$baseUrl/auth/veryfiycode.php';

  // ============== Forget Password Endpoints================= //
  static const String checkEmailEndpoint = '$baseUrl/forgetPassword/check_email.php';
  static const String veryfiyForgetPasswordCodeEndpoint = '$baseUrl/forgetPassword/veryfiy_code_forgoten_password.php';
  static const String resetPasswordEndpoint = '$baseUrl/forgetPassword/reset_password.php';


}