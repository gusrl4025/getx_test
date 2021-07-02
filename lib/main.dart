import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/home.dart';
import 'package:getx_test/src/pages/named/first.dart';
import 'package:getx_test/src/pages/named/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      initialRoute: "/",
      // routes: {
      //   "/" : (context) => Home(),
      //   "/first" : (context) => FirstNamedPage(),
      //   "/second" : (context) => SecondNamedPage(),
      // },
      getPages: [
        GetPage(name:"/", page: () => Home(), transition: Transition.zoom),
        GetPage(name:"/first", page: () => FirstNamedPage(), transition: Transition.zoom),
        GetPage(name:"/second", page: () => SecondNamedPage(), transition: Transition.zoom),
      ],
    );
  }
}
