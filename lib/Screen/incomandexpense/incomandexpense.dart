import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Incomandexpense extends StatelessWidget {
  const Incomandexpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 287,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff69AEA9),
                    Color(0xff3F8782),
                  ],
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Customtext(
                            //   text: "Good afternoon,",
                            //   textfontSize: 14,
                            //   textcolor: Colors.white,
                            //   textfontweight: FontWeight.w500,
                            // ),
                            // Customtext(
                            //     text: "Enjelin Morgeana",
                            //     textfontSize: 20,
                            //     textcolor: Colors.white,
                            //     textfontweight: FontWeight.w500)
                          ],
                        ),
                        // SvgPicture.asset(
                        //   "asset/svg/Homepageimages/beelicon.svg",
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
