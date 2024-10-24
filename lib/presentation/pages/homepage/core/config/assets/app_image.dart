class AppImage {
  static String main = "assets/images/";
  static String personMobile = getName("person_mobile.png");
  static String facebook = getName("facebook.png");
  static String instagram = getName("instagram.png");
  static String linkedin = getName("linkedin.png");
  static String twitter = getName("twitter.png");
  static String youtube = getName("youtube.png");

  static String getName(String name) => "$main$name";
}
