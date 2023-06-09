import 'package:get/get.dart';
import 'package:social_bible/presentation/pages/sign_up/sign_up_page.dart';
import 'package:social_bible/presentation/pages/splash/start_page.dart';

import '../presentation/pages/bottom_bar/binding/bottom_bar_binding.dart';
import '../presentation/pages/bottom_bar/bottom_bar.dart';
import '../presentation/pages/sign_in/binding/sign_in_binding.dart';
import '../presentation/pages/sign_in/sign_in_page.dart';
import '../presentation/pages/sign_up/binding/sign_up_binding.dart';
import '../presentation/pages/splash/splash.dart';
import 'app_routes.dart';

class RoutingModule {
  List<GetPage> routingList = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
      // binding: SplashBinding(),
      transition: Transition.fadeIn, // Example animation: Fade In
    ),
    GetPage(
      name: Routes.bottomBar,
      page: () => const BottomNavigationBars(),
      binding: BottomBarBinding(),
      transition: Transition
          .rightToLeftWithFade, // Example animation: Slide Right with Fade
    ),
    GetPage(
      name: Routes.signInScreen,
      page: () => const SigInScreen(),
      binding: SiginBinding(),
      transition:
          Transition.leftToRight, // Example animation: Slide Left to Right
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => const SignUpScreen(),
      binding: SignupBinding(),
      transition: Transition.zoom, // Example animation: Zoom In
    ),
    GetPage(
      name: Routes.startScreen,
      page: () => const StartPage(),
      transition: Transition.fade, // Example animation: Fade
    ),
  ];
}
