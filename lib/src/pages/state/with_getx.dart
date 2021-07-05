import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key key}) : super(key: key);
  CountControllerWithGetX _controllerWithGetX =
      Get.put(CountControllerWithGetX());

  Widget _button(String id) {
    return RaisedButton(
      child: Text("+", style: TextStyle(fontSize: 30)),
      onPressed: () {
        Get.find<CountControllerWithGetX>().increase(id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 30)),
          GetBuilder<CountControllerWithGetX>(
            id: "first",
            builder: (controller){
              return Text("${controller.count}",
                style: TextStyle(fontSize: 50));
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller){
              return Text("${controller.count}",
                style: TextStyle(fontSize: 50));
            },
          ),
          _button("first"),
          _button("second"),
          // RaisedButton(
          //   child: Text("+", style: TextStyle(fontSize: 30)),
          //   onPressed: () {
          //     Get.find<CountControllerWithGetX>().increase();
          //   },
          // ),
        ],
      ),
    );
  }
}