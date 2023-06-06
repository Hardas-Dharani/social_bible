import 'package:get/get.dart';

import '../../presentation/pages/bottom_bar/controller/bottom_bar_controller.dart';
import '../../presentation/pages/chat/controller/chat_controller.dart';
import 'network_manager.dart';

class NetworkBinding extends Bindings {
  // dependence injection attach our class.
  @override
  void dependencies() {
    Get.put(GetXNetworkManager(), permanent: true);
    Get.lazyPut(() => BottomBarController());
    Get.lazyPut(() => ChatController());
    // Get.lazyPut<GetXNetworkManager>(() => GetXNetworkManager());
  }
}
