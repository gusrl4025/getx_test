import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/src/pages/named/first.dart';
import 'package:getx_test/src/pages/normal/first.dart';
import 'package:getx_test/src/pages/reactive_state_manage_page.dart';
import 'package:getx_test/src/pages/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("일반적인 라우트"),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (_) => FirstPage(),
                //   )
                // );
                Get.to(() => FirstPage());
              },
            ),
            RaisedButton(
              child: Text("Named 라우트"),
              onPressed: () {
                //Navigator.of(context).pushNamed("/first");
                Get.toNamed("/first");
              },
            ),
            RaisedButton(
              child: Text("Arguments 전달"),
              onPressed: () {
                //Get.to(FirstPage(), arguments: "안녕");
                //Get.toNamed("/next", arguments: {"name":"dizzi", "age":25});
                Get.toNamed("/next", arguments: User(
                  name: "dizzi", age: 25,
                ));
              }
            ),
            RaisedButton(
              child: Text("동적 url"),
              onPressed: () {
                Get.toNamed("/user/28357?name=dizzi&age=25");
              },
            ),
            RaisedButton(
              child: Text("단순상태관리"),
              onPressed: () {
                Get.to(() => SimpleStateManagePage());
              },
            ),
            RaisedButton(
              child: Text("반응형상태관리"),
              onPressed: () {
                Get.to(() => ReactiveStateManagePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;
  User({this.name, this.age});
}