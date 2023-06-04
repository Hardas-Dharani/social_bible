import 'package:get/get.dart';
import 'package:social_bible/presentation/pages/application/application_view.dart';
import 'package:social_bible/presentation/pages/sign_up/sign_up_page.dart';
import 'package:social_bible/presentation/pages/splash/start_page.dart';

import '../presentation/pages/application/binding/application_binding.dart';
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
    ),
    GetPage(
      name: Routes.signInScreen,
      page: () => const SigInScreen(),
      binding: SiginBinding(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => const SignUpScreen(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.startScreen,
      page: () => const StartPage(),
    ),
    GetPage(
      name: Routes.applicationScreen,
      page: () => const ApplicationView(),
      binding: ApplicationsBinding(),
    ),
  ];
}
