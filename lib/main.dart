import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktgo/app/services/network_services.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await initServices();
  runApp(
    GetMaterialApp(
      title: "test",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

Future<void> initServices() async {
  Get.put(NetworkServices());
}
