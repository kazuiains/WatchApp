class ApiEndpoint {
  static String get api => "/3";

  static String get movie => "/movie";

  static String get mNowPlaying => "$api$movie/now_playing";

  static String get mPopular => "$api$movie/popular";

  static String get mTopRated => "$api$movie/top_rated";

  static String get mUpComing => "$api$movie/upcoming";

  static String get mSearch => "$api/search$movie";

  static String get mDetail => "$api$movie";

  static String get user => "$api/user";

  static String get city => "$api/city";
}
