import 'package:get/get.dart';

class GetXCounterController extends GetxController {
  //데이터 부분
  var count = 0.obs;

  //로직
  void countUp() {
    count = count + 1;
  }

  void countDown() {
    count = count - 1;
  }
}
