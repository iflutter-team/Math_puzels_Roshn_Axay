import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
   // SharedPreferences? ps;
  int level = 0;

  // get() async {
  //   ps = await SharedPreferences.getInstance();
  //   level = ps!.getInt("level") ?? 0;
  // }

  // @override
  // void onInit(){
  //   // Get called when controller is created
  //   super.onInit();
  //   get();
  // }


  startToPlayScreen() {
    onTap:() {
      // level = ps!.getInt("level") ?? 0;
      if (kDebugMode) {
        print("<<<<<<<<<<<<<<$level");
      }
      // Get.to();
    };
    update(["start"]);
  }
}
