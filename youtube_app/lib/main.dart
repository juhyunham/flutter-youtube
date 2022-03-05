
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_app/binding/init_binding.dart';
import 'package:youtube_clone_app/src/app.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "너튜브 App",
      theme: ThemeData(
        primaryColor: Colors.white, 
        primarySwatch: Colors.blue, 
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: InitBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => App())
      ]
    );
  }
}