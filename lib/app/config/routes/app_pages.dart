import 'package:get/get.dart';
import 'package:watch_app/app/config/routes/app_routes.dart';
import 'package:watch_app/presentation/get/home/home_binding.dart';
import 'package:watch_app/presentation/get/list/list_binding.dart';
import 'package:watch_app/presentation/ui/pages/home/home_page.dart';
import 'package:watch_app/presentation/ui/pages/list/list_page.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.list,
      page: () => const ListPage(),
      binding: ListBinding(),
    ),
  ];
}
