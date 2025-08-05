class LinkApi {
  static const String server = "http://10.0.2.2/ecommerce";
  static const String test = "$server/test.php";
  /////////////////////////////AuthLink//////////////////////////////////
  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verfiyCode = "$server/auth/verfiycode.php";
  /////////////////////////////Forgetpassword//////////////////////////////////
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String verfiycodeForForget =
      "$server/forgetpassword/verfiycode.php";
}
