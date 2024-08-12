import 'package:ecommerce/Views/Splash/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const String splashScreen = "/";
}

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: AppRoutes.splashScreen,
    page: () => const SplashScreen(),
  ),
];
