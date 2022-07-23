import 'package:flutter/material.dart';
import 'package:fluttertask/scr/ui/imag_scren.dart';
import 'package:get/get.dart';

import 'scr/bindings/bindings.dart';
import 'scr/ui/details_scr.dart';
import 'scr/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        initialBinding: AllBindings(),
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        getPages: [
          GetPage(
            name: "/",
            page: () => Home(),
          ),
          GetPage(
            name: "/Details",
            page: () => Details(),
          ),  GetPage(
            name: "/Image",
            page: () => ImageScreen( ),
          )
        ]);



  }
}
