import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/home.dart';
import 'package:getx_test/src/pages/normal/first.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                //Navigator.of(context).pop();
                Get.back();
              },
            ),
            RaisedButton(
              child: Text("홈 이동"),
              onPressed: () {
                //Get.to(() => Home());
                Get.offAll(Home());
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(builder: (_) => Home()),
                //   (route) => false
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}