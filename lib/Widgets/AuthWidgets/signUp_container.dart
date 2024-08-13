import 'package:ecommerce/Core/Constants/colors.dart';
import 'package:ecommerce/Core/Constants/fonts.dart';
import 'package:ecommerce/Core/Constants/images.dart';
import 'package:ecommerce/Core/Utils/Buttons.dart';
import 'package:ecommerce/Views/Auth/login_screen.dart';
import 'package:ecommerce/Views/Auth/successSignUP_screen.dart';
import 'package:ecommerce/Widgets/AuthWidgets/customPassTextField.dart';
import 'package:ecommerce/Widgets/AuthWidgets/customTextField.dart';
import 'package:ecommerce/Widgets/AuthWidgets/dividers.dart';
import 'package:ecommerce/Widgets/AuthWidgets/socialMediaRow.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupContainer extends StatelessWidget {
  const SignupContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 10),
        height: h * .78,
        width: w,
        decoration: const BoxDecoration(
            color: kveryWhite,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Center(
          child: ListView(children: [
            Column(
              children: [
                const Customtextfield(
                  keyboardType: TextInputType.emailAddress,
                  hintText: "Enter your user name",
                  labelText: "User Name",
                  iconData: Icons.person,
                ),
                SizedBox(
                  height: h * .03,
                ),
                const Customtextfield(
                  keyboardType: TextInputType.emailAddress,
                  hintText: "Enter your email",
                  labelText: "Email",
                  iconData: Icons.mail_outline_rounded,
                ),
                SizedBox(
                  height: h * .03,
                ),
                const CustomPasswordtextfield(
                  hintText: "Enter your password",
                  labelText: "Password",
                ),
                SizedBox(
                  height: h * .03,
                ),
                const CustomPasswordtextfield(
                  hintText: "Re-type your password",
                  labelText: "Confirm Password",
                ),
                SizedBox(
                  height: h * .03,
                ),
                CustomButton(
                    onPressed: () {
                      Get.to(() => const SuccessSignupScreen());
                    },
                    title: "Sign Up",
                    color: kPrimary,
                    style: Fonts.splashButtonText),
                SizedBox(
                  height: h * .022,
                ),
                InkWell(
                    onTap: () {
                      Get.to(() => const LoginScreen());
                    },
                    child: Text(
                      "Already have an account ? Login",
                      style: GoogleFonts.notoSansOlChiki(
                          fontWeight: FontWeight.bold,
                          fontSize: w * .04,
                          color: kPrimary,
                          decorationColor: kPrimary),
                    )),
                const Dividers(
                  text: "Sign up with",
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SocialmediaRow(image: Images.google, text: "Google"),
                    SocialmediaRow(image: Images.facebook, text: "Facebook"),
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
