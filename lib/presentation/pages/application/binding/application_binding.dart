import 'package:get/get.dart';
import 'package:social_bible/presentation/tabs/add_tab/controller/add_controller.dart';
import 'package:social_bible/presentation/tabs/bible_tab/controller/bible_controller.dart';
import 'package:social_bible/presentation/tabs/discover_tab/controller/discover_controller.dart';
import 'package:social_bible/presentation/tabs/home_tab/controller/home_controller.dart';
import 'package:social_bible/presentation/tabs/inbox_tab/controller/inbox_controller.dart';
import '../controller/application_controller.dart';

class ApplicationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationsController>(() => ApplicationsController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => BibleController());
    Get.lazyPut(() => DiscoverController());
    Get.lazyPut(() => AddController());
    Get.lazyPut(() => InboxController());
  }
}
