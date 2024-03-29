import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_carousel/app/modules.home/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      defaultTransition: Transition.fade,
      home: HomeView(),
    );
  }
}
