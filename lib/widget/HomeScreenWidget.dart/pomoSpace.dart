import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/Themes/myText.dart';

class PomoSpace extends StatelessWidget {
  PomoSpace({Key? key}) : super(key: key);
  PomoSpaceControllers ctrl = new PomoSpaceControllers();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Column(
        children: [
          Icon(
            Iconsax.smileys5,
            size: 100,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              child: Obx(() => MyText(((ctrl.count.value / 60) % 60)
                      .floor()
                      .toString()
                      .padLeft(2, "0"))
                  .time()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyText(":").time(),
            ),
            Container(
              child: Obx(() => MyText((ctrl.count.value % 60)
                      .floor()
                      .toString()
                      .padLeft(2, "0"))
                  .time()),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    !ctrl.canPaused.value ? ctrl.startTimer() : ctrl.pause();
                  },
                  icon: Obx(() => Icon(
                      ctrl.canPaused.value ? Iconsax.pause : Iconsax.play)),
                  label: Obx(() => ctrl.canPaused.value
                      ? MyText("Paused")
                      : MyText("Start"))),
              SizedBox(width: 10),
              ElevatedButton.icon(
                  onPressed: () {
                    ctrl.stop();
                  },
                  icon: Icon(Iconsax.stop),
                  label: MyText("Stop")),
            ],
          ),
        ],
      )),
    );
  }
}

class PomoSpaceControllers extends GetxController {
  var canPaused = false.obs;
  var defaultBreakTime = 5*60;
  var defaultWorkingCount = (25 * 60);
  var count = 0.obs;
  late Timer _timer;

  void startTimer() {
    canPaused.value = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      count.value++;
      if (count.value == defaultWorkingCount) {
        Get.dialog(AlertDialog(
          title: MyText("Working time is over!").heading3(),
          content: MyText("have a break!"),
          actions: [
            gotoBreak(),
            continueToWork(),
          ],
        )
        );
        Timer(Duration(seconds:10),()=>Get.back());
      }
      update();
    });
  }

  void pause() {
    _timer.cancel();
    canPaused.value = false;
    update();
  }

  void stop() {
    _timer.cancel();
    canPaused.value = false;
    count.value = 0;
    update();
  }

  Widget gotoBreak() {
    return ElevatedButton.icon(
        onPressed: () {
          _timer.cancel();
          breakTimeStart();
          Get.back();
        },
        icon: Icon(Iconsax.coffee),
        label: MyText("take a break"));
  }

  Widget continueToWork() {
    return ElevatedButton.icon(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Iconsax.task),
        label: MyText("continue to work"));
  }

  void breakTimeStart() {
    stop();
    if (count.value >= defaultWorkingCount) count.value = 0;
    canPaused.value = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      count.value++;
      if (count.value == defaultBreakTime) {
        Get.dialog(AlertDialog(
          title: MyText("Break time is over!").heading3(),
          content: MyText("Start your task!"),
          actions: [
            continueBreak(),
            goToWork(),
          ],
        ));
      }
      update();
    });
  }

  Widget continueBreak() {
    return ElevatedButton.icon(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Iconsax.coffee),
        label: MyText("Extend break"));
  }

  Widget goToWork() {
    return ElevatedButton.icon(
        onPressed: () {
          _timer.cancel();
          count.value = 0;
          startTimer();
          Get.back();
        },
        icon: Icon(Iconsax.task),
        label: MyText("Continue to work"));
  }

  @override
  void onClose() {
    _timer.cancel();
    // TODO: implement onClose
    super.onClose();
  }
}
