import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pjt/state_management/getx/get_x_counter_controller.dart';

class GetXHomepage extends StatelessWidget {
  GetXHomepage({super.key});

  final GetXCounterController controller = Get.put(GetXCounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Counter App")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Obx(
                () => Text(
                  "Counter.count : ${controller.count}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.countUp();
                },
                child: Text("카운트 증가"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.countDown();
                },
                child: Text("카운트 감소"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
