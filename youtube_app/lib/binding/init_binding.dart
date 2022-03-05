import 'package:get/get.dart';
import 'package:youtube_app/controller/app_controller.dart';

class InitBinding implements Bindings {
  @override 
  void dependencies () {
    Get.put(AppController());
  }
}