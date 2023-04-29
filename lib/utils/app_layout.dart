import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    double x = getScreenHight() / pixels; // gets screen propotion
    return getScreenHight() / x; // height/propotion will get the size needed
  }

  static getWidget(double pixels) {
    double x = getScreenWidth()() / pixels; // gets screen propotion
    return getScreenWidth() / x; // height/propotion will get the size needed
  }
}
