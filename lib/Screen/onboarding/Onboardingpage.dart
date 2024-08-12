import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:miniproject1/Screen/Homepage/Homepage.dart';
import 'package:miniproject1/Screen/NavBarcontroller/navBarcontrollingpage.dart';
import 'package:miniproject1/Screen/widgets/custombutton.dart';
import 'package:miniproject1/Screen/widgets/customtext.dart';

class Onboardingpage extends StatelessWidget {
  const Onboardingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            fit: BoxFit.fitWidth,
            image: AssetImage("asset/onboarding_image.png"),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 56, right: 57, bottom: 0),
            child: Column(
              children: [
                Customtext(
                  text: "spend smarter\nsave more",
                  textfontSize: 36,
                  textcolor: Color(0xff438883),
                  textfontweight: FontWeight.w700,
                  textallignment: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 26, left: 28, right: 28, bottom: 17),
                  child: Custombutton(
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
                    onTap: () {
                      Get.off(Navbarcontrollingpage());
                    },
                  ),
                ),

                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have account?",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                          text: "Log in",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff69AEA9)))
                    ],
                  ),
                ),
                SizedBox(height: 50)
                // Customtext(
                //  // text: "Already have account? Log In",
                //   textfontSize: 14,
                //   textcolor: Color(0xff438883),
                //   textfontweight: FontWeight.w500,
                //   textallignment: TextAlign.center,
                // ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
