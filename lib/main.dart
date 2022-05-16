import 'package:ecommerce_build_getx/routes/routes.dart';
import 'package:ecommerce_build_getx/views/home/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binding/initial_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: Routes.routes,
      initialRoute: Routes.INITIAL,
      initialBinding: InitialBinding(),
    );
  }
}
