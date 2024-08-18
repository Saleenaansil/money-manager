import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:miniproject1/Core/Colors.dart';
import 'package:miniproject1/Screen/Addexpense/Addexpense.dart';
import 'package:miniproject1/Screen/Homepage/Homepage.dart';
import 'package:miniproject1/Screen/NavBarcontroller/widgets/bottomnavbar.dart';
import 'package:miniproject1/Screen/incomandexpense/incomandexpense.dart';
import 'package:miniproject1/Screen/profile/profile.dart';
import 'package:miniproject1/Screen/statistics/Statistics.dart';
import 'package:miniproject1/Screen/widgets/customtext.dart';
import 'package:miniproject1/controllers/appcontroller.dart';

class Navbarcontrollingpage extends StatelessWidget {
  Navbarcontrollingpage({super.key});
  List<Widget> pages = [
    Homepage(),
    Statistics(),
    // Addexpense(),
    Incomandexpense(),
    Profile(),
  ];
  Appcontroller appController = Get.put(Appcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        print("rebuilding");
        return pages[appController.bottomNavbarIndex.value];
      }),
      bottomNavigationBar: Bottomnavbar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => Addexpense());
        },
        backgroundColor: mainAppColor,
        child: SvgPicture.asset("asset/svg/bottomnavbar/Add.svg"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
