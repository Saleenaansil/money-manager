import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:miniproject1/Core/Colors.dart';
import 'package:miniproject1/Screen/widgets/customtext.dart';

class Addexpense extends StatelessWidget {
  Addexpense({super.key});
  final List<String> categories = ["Food", "Dress", "Hospital"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
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
                        SvgPicture.asset("asset/svg/Addexpense/backarrow.svg"),
                        Customtext(
                            text: "Add Expense",
                            textfontSize: 18,
                            textcolor: Colors.white,
                            textfontweight: FontWeight.w600),
                        SvgPicture.asset("asset/svg/Homepageimages/menu.svg"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 165,
              left: 28,
              right: 28,
              child: Container(
                height: 500,
                width: 358,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Customtext(
                          text: "NAME",
                          textfontSize: 12,
                          textcolor: Color.fromARGB(255, 175, 134, 134),
                          textfontweight: FontWeight.w500),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.4, color: mainAppColor),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: DropdownButtonFormField(
                              value: "Food",
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              items: categories.map((Category) {
                                return DropdownMenuItem(
                                  value: Category,
                                  child: Row(
                                    children: [
                                      CircleAvatar(),
                                      Customtext(
                                        text: "${Category}",
                                        textfontSize: 14,
                                        textcolor: Color(0xff666666),
                                        textfontweight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                              onChanged: (newValue) {}),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Customtext(
                          text: "AMOUNT",
                          textfontSize: 12,
                          textcolor: Color(0xff666666),
                          textfontweight: FontWeight.w500),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.4, color: mainAppColor),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Select an option",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Customtext(
                          text: "DATE",
                          textfontSize: 12,
                          textcolor: Color(0xff666666),
                          textfontweight: FontWeight.w500),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.4, color: mainAppColor),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextField(
                            readOnly: true,
                            decoration: InputDecoration(
                              hintText: "Select an option",
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(0),
                                child: InkWell(
                                  onTap: () async {
                                    print("calendar");
                                    await showDatePicker(
                                        context: context,
                                        firstDate: DateTime(2020),
                                        lastDate: DateTime(2030));
                                  },
                                  child: CircleAvatar(),
                                  // child: SvgPicture.asset(
                                  // "asset/svg/Addexpense/calendar.svg", // Replace with your SVG file path
                                  // ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
