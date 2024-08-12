import 'package:ecommerce/Core/Constants/colors.dart';
import 'package:ecommerce/Widgets/AuthWidgets/loginContainer.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Container(
            height: h,
            width: w,
            color: kPrimary,
          ),
          const Logincontainer()
        ],
      ),
    );
  }
}
