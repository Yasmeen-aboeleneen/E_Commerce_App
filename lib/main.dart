import 'package:ecommerce/Core/Constants/colors.dart';
import 'package:ecommerce/Views/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: ThemeData(
        scaffoldBackgroundColor: kveryWhite,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      // getPages: routes,
    );
  }
}
