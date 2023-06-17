import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mathspuzzel/level_screen/level_screen.dart';
import 'package:mathspuzzel/splash_screen/splash_screen.dart';

main() {
  runApp(
    GetMaterialApp(
      home: const level_Screen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  );
}
