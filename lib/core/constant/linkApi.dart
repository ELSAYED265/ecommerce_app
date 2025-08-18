class LinkApi {
  static const String server = "http://10.0.2.2/ecommerce";
  static const String test = "$server/test.php";
  static const String imageStatic = "$server/upload";
  ///////////////////////////////image//////////////////////

  static const String imageCategories = "$imageStatic/categories";
  static const String imageItems = "$imageStatic/items";

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
  /////////////////////////////homepage//////////////////////////////////
  static const String homePage = "$server/home.php";
  ///////////////////////////items//////////////////////////////
  static const String items = "$server/items/items.php";
  //////////////////////////favorite//////////////////////////////////////
  static const String favoriteAdd = "$server/favorite/add.php";
  static const String favoriteRemove = "$server/favorite/remove.php";
  static const String favoriteView = "$server/favorite/view.php";
  static const String removeFromMyfavorite =
      "$server/favorite/removefromfavorite.php";
}
