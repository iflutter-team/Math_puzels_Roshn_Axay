import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mathspuzzel/splash_screen/splash_screen.dart';

main() {
  runApp(
    GetMaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  );
}
