import 'package:flutter/material.dart';
import 'package:getx_test/src/pages/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Provider", style: TextStyle(fontSize: 50)),
          Consumer<CountControllerWithProvider>(
            builder: (
              _, snapshot, child) {
              return Text("${snapshot.count}", style: TextStyle(fontSize: 50));
            },
          ),
          RaisedButton(
            child: Text("+", style: TextStyle(fontSize: 30)),
            onPressed: () {
              //Consumer가 있으면 있는 곳만 rebuild가 되기 때문에 listen: false를 해줘 전체적으로 rebuild가 되지 않게 해줘야한다.
              Provider.of<CountControllerWithProvider>(context, listen: false).increase();
            }
          ),
        ],
      ),
    );
  }
}