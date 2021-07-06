import 'package:get/get.dart';

enum NUM {FIRST, SECOND}
class User{
  String name;
  int age;
  User({this.name, this.age})
}

class CountControllerWithReactive extends GetxController{
  RxInt count = 0.obs;
  RxDouble rx_double = 0.0.obs;
  RxString rx_string = "".obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: "dizzi", age: 25).obs;
  RxList<String> list = [].obs;

  void increase() {
    count++;
    rx_double++;
    rx_double(135);
    rx_string("안녕");

    nums(NUM.SECOND);
    user(User());
    user.update((_user) {
      _user.name = "Dizzi";
    });
    // list.addAll();
    // list.add();
    list.addIf(user.value.name=="Dizzi", "okay");
  }
  void putNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    ever(count, (_) => print("매번 호출"));
    once(count, (_) => print("한번만 호출"));
    debounce(count, (_) => print("마지막 변경에 한번만 호출"), time: Duration(seconds: 1));
    interval(count, (_) => print("변경되고 있는 동안 1초마다 호출"),
        time: Duration(seconds: 1));
    super.onInit();
  }
}