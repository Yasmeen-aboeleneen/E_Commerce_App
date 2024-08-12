import 'package:ecommerce/Core/Constants/colors.dart';
import 'package:ecommerce/Core/Constants/fonts.dart';
import 'package:ecommerce/Core/Constants/images.dart';
import 'package:ecommerce/Views/OnBoarding/onBoarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Images.splash,
          height: h * .5,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 70, left: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Market IN",
                style: Fonts.splashText2,
              ),
              InkWell(
                  onTap: () {
                    Get.to(() => const OnboardingScreen());
                  },
                  child: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: kPrimary2,
                    size: h * .066,
                  ))
            ],
          ),
        )
      ],
    ));
  }
}
