import 'package:ecommerce/Core/Constants/colors.dart';
import 'package:ecommerce/Core/Constants/fonts.dart';
import 'package:ecommerce/Core/Constants/images.dart';
import 'package:ecommerce/Core/Utils/Buttons.dart';
import 'package:ecommerce/Widgets/AuthWidgets/customPassTextField.dart';
import 'package:ecommerce/Widgets/AuthWidgets/customRow.dart';
import 'package:ecommerce/Widgets/AuthWidgets/customTextField.dart';
import 'package:ecommerce/Widgets/AuthWidgets/dividers.dart';
import 'package:ecommerce/Widgets/AuthWidgets/socialMediaRow.dart';
import 'package:flutter/material.dart';

class Logincontainer extends StatelessWidget {
  const Logincontainer({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
        height: h * .62,
        width: w,
        decoration: const BoxDecoration(
            color: kveryWhite,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Column(
          children: [
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
              height: h * .001,
            ),
            const CustomRow(),
            SizedBox(
              height: h * .001,
            ),
            CustomButton(
                onPressed: () {},
                title: "Login",
                color: kPrimary,
                style: Fonts.splashButtonText),
            SizedBox(
              height: h * .01,
            ),
            const Dividers(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SocialmediaRow(image: Images.google, text: "Google"),
                SocialmediaRow(image: Images.facebook, text: "Facebook"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
