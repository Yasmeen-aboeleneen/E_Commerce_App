import 'package:ecommerce/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialmediaRow extends StatelessWidget {
  const SocialmediaRow({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: kPrimary, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          width: w * .4,
          height: h * .06,
          child: GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                    child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: h * .03,
                )
                
                ),
                SizedBox(
                  width: w * .01,
                ),
                Text(
                  text,
                  style: GoogleFonts.notoSansOlChiki(
                      fontWeight: FontWeight.w500,
                      fontSize: w * .04,
                      color: kGrey),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
