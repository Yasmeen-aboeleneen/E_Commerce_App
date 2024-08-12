import 'package:ecommerce/Core/Constants/colors.dart';
import 'package:flutter/material.dart';

class Dividers extends StatelessWidget {
  const Dividers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 5, left: 15, right: 15),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: kPrimary,
              thickness: 3,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Or login with',
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold, color: kGrey),
            ),
          ),
          Expanded(
            child: Divider(
              color: kPrimary,
              thickness: 3,
            ),
          ),
        ],
      ),
    );
  }
}
