import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mathspuzzel/home_screen/home_controller.dart';
import 'package:mathspuzzel/utils/asset_res.dart';
import 'package:mathspuzzel/utils/string_res.dart';

Widget backGroundImage(
  double height,
  double width,
) {
  return Stack(
    children: [
      Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AssertRes.backGroundImage,
              ),
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.070,
            ),
            Image.asset(
              AssertRes.mathTextImage,
              scale: 1.5,
            ),
            SizedBox(
              height: Get.height * 0.090,
            ),
            GetBuilder<HomePageController>(
              id: "start",
              builder: (controller) {
                return InkWell(
                  onTap: () => controller.startToPlayScreen(),
                  child: Image.asset(
                    AssertRes.startTextImage,
                    scale: 3.2,
                  ),
                );
              },
            ),
            SizedBox(
              height: Get.height * 0.020,
            ),
            Image.asset(
              AssertRes.puzzleTextImage,
              scale: 3.2,
            ),
            SizedBox(
              height: Get.height * 0.020,
            ),
            Image.asset(
              AssertRes.buyTextImage,
              scale: 3.2,
            ),
            SizedBox(
              height: Get.height * 0.18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  AssertRes.shareImage,
                  scale: 17,
                ),
                Container(
                  height: Get.height * 0.060,
                  width: Get.width * 0.45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(
                      right: Radius.circular(50),
                      left: Radius.circular(50),
                    ),
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  child: const InkWell(
                    child: Text(
                      StringRes.privacyPolicy,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontFamily: 'chalk',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  AssertRes.mailImage,
                  scale: 17,
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
