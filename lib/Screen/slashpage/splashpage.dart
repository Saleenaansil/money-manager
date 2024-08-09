import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:miniproject1/Screen/widgets/customtext.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff63B5AF),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff63B5AF),
            Color(0xff438883),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Center(
            child: Customtext(
                text: "mono",
                textfontSize: 50,
                textcolor: Colors.white,
                textfontweight: FontWeight.w700)),
      ),
    );
  }
}
