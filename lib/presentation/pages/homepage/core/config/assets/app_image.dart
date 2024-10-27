class AppImage {
  static String main1 = "assets/images/";
  static String personMobile = getName("person_mobile.png");
  static String facebook = getName("facebook.png");
  static String instagram = getName("instagram.png");
  static String linkedin = getName("linkedin.png");
  static String twitter = getName("twitter.png");
  static String youtube = getName("youtube.png");

  static String getName(String name) => "$main1$name";

//services
  static String services = "assets/services/";
  static String webdev = getServiceName("webdev.png");
  static String uiux = getServiceName("uiux.png");
  static String mic = getServiceName("mic.png");
  static String game = getServiceName("game.png");
  static String photo = getServiceName("photo.png");
  static String social = getServiceName("social.png");
  static String cross = getServiceName("cross.png");
  static String tick = getServiceName("tick.png");
  //recommendation
  static String rating = getServiceName("rating.png");
  static String p1 = getServiceName("p1.png");
  static String p2 = getServiceName("p2.png");
  static String p3 = getServiceName("p3.png");

  static String getServiceName(String name) => "$services$name";

  static List<List<String>> service = [
    [AppImage.webdev, "Web Development", "blog, e-commerce"],
    [AppImage.uiux, "UI/UX Design", "Mobile app, website design"],
    [AppImage.mic, "Sound Design", "Voice Over, Beat Making"],
    [AppImage.game, "Game Design", "Character Design, Props & Objects"],
    [AppImage.photo, "Photography", "portrait, product photography"],
    [
      AppImage.social,
      "Social Media Handling",
      "Handles Instagram,Facebook,Youtube"
    ],
  ];
}
