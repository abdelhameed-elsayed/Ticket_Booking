import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getsize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getHeight(double pixles) {
    double x = getScreenHeight() / pixles;
    return getScreenHeight() / x;
  }

  static getWidth(double pixles) {
    double x = getScreenWidth();
    return getScreenWidth() / x;
  }
}
