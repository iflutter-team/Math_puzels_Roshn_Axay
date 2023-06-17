import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mathspuzzel/home_screen/home_controller.dart';
import 'package:mathspuzzel/home_screen/home_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageController());
    return Scaffold(
      body: SafeArea(
        child: backGroundImage(
          double.infinity,
          double.infinity,
        ),
      ),
    );
  }
}
