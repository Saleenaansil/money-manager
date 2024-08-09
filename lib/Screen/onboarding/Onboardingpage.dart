import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:miniproject1/Screen/widgets/custombutton.dart';
import 'package:miniproject1/Screen/widgets/customtext.dart';

class Onboardingpage extends StatelessWidget {
  const Onboardingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 250,
          width: double.infinity,
          color: Colors.indigoAccent,
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            children: [
              Customtext(
                text: "spend smarter\nsave more",
                textfontSize: 36,
                textcolor: Color(0xff438883),
                textfontweight: FontWeight.w700,
                textallignment: TextAlign.center,
              ),
              Custombutton(
                text: "Get Started",
                textfontSize: 36,
                textcolor: Colors.white,
                textfontweight: FontWeight.w700,
                height: 67,
                width: double.infinity,
                applyGradientColor: true,
                gradientColor1: Color(0xff69AEA9),
                gradientColor2: Color(0xff3F8782),
                borderRadius: 40,
              ),
              Customtext(
                text: "Already have account? Log In",
                textfontSize: 14,
                textcolor: Color(0xff438883),
                textfontweight: FontWeight.w500,
                textallignment: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
