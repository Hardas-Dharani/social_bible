import 'package:get/get.dart';

import '../controller/bible_controller.dart';

class BibleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BibleController());
  }
}
