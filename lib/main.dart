import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniproject1/Screen/NavBarcontroller/navBarcontrollingpage.dart';
import 'package:miniproject1/Screen/NavBarcontroller/widgets/bottomnavbar.dart';
import 'package:miniproject1/Screen/onboarding/Onboardingpage.dart';
import 'package:miniproject1/Screen/slashpage/splashpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home:  Navbarcontrollingpage(),
    );
  }
}
