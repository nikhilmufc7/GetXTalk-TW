import 'package:get/get.dart';

class HomeController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update(); // rebuilds the widget
  }

  void decrement() {
    counter--;
    update(); // rebuilds the widget
  }

  //Reactive approach

  // var counter = 0.obs;

  // void increment() => counter.value++;

  // void decrement() => counter.value--;
}
