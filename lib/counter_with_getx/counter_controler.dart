import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt countt = 0.obs;

  void increment() {
    countt++;
  }

  void decrement() {
    countt--;
  }
}
