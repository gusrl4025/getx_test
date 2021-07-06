import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/count_controller_with_reactive.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text("반응형상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GetX", style: TextStyle(fontSize: 30)),
            // builder를 사용할 수 있지만 밑의 방식이 코드가 더 짧아 선호된다.
            // GetX(
            //   builder: (_) {
            //     return Text(
            //       "${Get.find<CountControllerWithReactive>().count.value}", 
            //       style: TextStyle(fontSize: 50));
            //   }
            // ),
            Obx(() => Text(
              "${Get.find<CountControllerWithReactive>().count.value}", 
              style: TextStyle(fontSize: 50))),
            RaisedButton(
              child: Text("+", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
            ),
            RaisedButton(
              child: Text("5로 변경", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
            ),
          ],  
        ),
      ),
    );
  }
}