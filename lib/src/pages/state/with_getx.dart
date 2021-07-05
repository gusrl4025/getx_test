import 'package:flutter/material.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 50)),
          Text("0", style: TextStyle(fontSize: 50)),
          RaisedButton(
            child: Text("+", style: TextStyle(fontSize: 30)),
            onPressed: () {}
          ),
        ],
      ),
    );
  }
}