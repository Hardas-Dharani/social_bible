import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../app/services/network_binding.dart';
import '../routes/app_routes.dart';
import '../routes/app_routings.dart';
import 'pages/bottom_bar/bottom_bar.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: NetworkBinding(),
        initialRoute: Routes.bottomBar,
        home: const BottomNavigationBars(),
        getPages: RoutingModule().routingList,
      );
    });
  }
}
