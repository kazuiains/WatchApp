abstract class AppRoutes {
  static const String root = '/';
  static const String home = '/home';
  static const String list = '/list';
  static const String detail = '/detail';

  ///function to determine which route will be executed first
  static String? initialPage() {
    return home;
  }
}
