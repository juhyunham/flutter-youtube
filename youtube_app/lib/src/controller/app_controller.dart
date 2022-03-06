import 'package:get/get.dart';

enum RouteName {
  Home,
  Explore,
  Add,
  Subs,
  Library
}

class AppController extends GetxService {
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    currentIndex(index);
  }
}