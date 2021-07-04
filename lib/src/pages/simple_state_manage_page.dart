import 'package:flutter/material.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("단순상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ""
            ),
            RaisedButton(
              child: Text(
                "+",
                style: TextStyle(fontSize: 30)
              ),
            ),
          ],  
        ),
      ),
    );
  }
}