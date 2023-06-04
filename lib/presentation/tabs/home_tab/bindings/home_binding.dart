import 'package:get/get.dart';
import 'package:social_bible/presentation/tabs/home_tab/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
