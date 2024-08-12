import 'package:ecommerce/Core/Constants/colors.dart';
import 'package:ecommerce/Core/Constants/fonts.dart';
import 'package:ecommerce/Core/Constants/images.dart';
import 'package:ecommerce/Core/Utils/Buttons.dart';
import 'package:ecommerce/Views/Auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(children: [
      Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: h * .3,
            width: w,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              kveryWhite.withOpacity(0.8),
              kveryWhite.withOpacity(0),
              kPrimary.withOpacity(.8)
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          )),
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Fresh Groceries to\n your doorstep",
              style: Fonts.splashText,
            ),
            Image.asset(
              Images.onBoarding1,
              fit: BoxFit.cover,
              width: w,
            ),
            CustomButton(
                onPressed: () {
                  Get.to(() => const LoginScreen());
                },
                title: "Start",
                color: kPrimary,
                style: Fonts.splashButtonText),
            SizedBox(
              height: h * .015,
            ),
          ]),
      SizedBox(
        height: h * .05,
      ),
      Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: h * .3,
            width: w,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              kPrimary.withOpacity(0.8),
              kveryWhite.withOpacity(0),
              kveryWhite.withOpacity(0)
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          )),
    ]));
  }
}
