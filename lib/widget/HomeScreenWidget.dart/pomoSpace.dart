import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:isar/isar.dart';
import 'package:pomotica/Themes/myText.dart';
import 'package:pomotica/database/userDataCrud.dart';
import 'package:pomotica/model/pomoticaUserModel.dart';
import 'package:pomotica/widget/HomeScreenWidget.dart/pomodoroSessionView.dart';

import '../../core/myIsar.dart';

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
          Image.asset("asset/img/pomobase.png", width: 100, height: 100),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Obx(
              () =>
                  (((ctrl.currentWorkingCount.value / (60 * 60)) % 60).floor() >
                          0)
                      ? Row(
                          children: [
                            Container(
                              child: MyText(((ctrl.currentWorkingCount.value /
                                              (60 * 60)) %
                                          60)
                                      .floor()
                                      .toString()
                                      .padLeft(2, "0"))
                                  .time(),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MyText(":").time(),
                            ),
                          ],
                        )
                      : Container(),
            ),
            Container(
              child: Obx(() => MyText(
                      ((ctrl.currentWorkingCount.value / 60) % 60)
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
              child: Obx(() => MyText((ctrl.currentWorkingCount.value % 60)
                      .floor()
                      .toString()
                      .padLeft(2, "0"))
                  .time()),
            )
          ]),
          PomodoroSessionView(total: 4, done: 2),
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
  var userData = UserDataCrud.userDataGetAll();
  var canPaused = false.obs;
  late int defaultBreakTime;
  late int defaultWorkingCount;
  late int defaultSessions;
  var currentWorkingCount = 0.obs;
  var currentSessions = 0.obs;
  late Timer _timer;

  @override
  void onInit() {
    UserDataCrud.userDataCreate(
        PomoticaUserModel(
            id: 1,
            defaultWorkingTime: 25,
            breakTime: 5,
            bigBreakTime: 10,
            numberOfSessions: 4));
    
    //TODO: Fetch time from userData;
    

    super.onInit();
  }

  initializeVariables(){
    defaultWorkingCount = userData.defaultWorkingTime * 60;
    defaultBreakTime = userData.breakTime * 60;
    defaultSessions = userData.numberOfSessions;
    update();
  }

  void startTimer() {
    initializeVariables();
    canPaused.value = true;
    _timer = Timer.periodic(Duration(microseconds: 1), (timer) {
      //todo: change while release
      currentWorkingCount.value++;
      // print((currentWorkingCount / (60 * 60)) % 60);
      if (currentWorkingCount.value == defaultWorkingCount) {
        Get.dialog(AlertDialog(
          title: MyText("Working time is over!").heading3(),
          content: MyText("have a break!"),
          actions: [
            gotoBreak(),
            continueToWork(),
          ],
        ));
        Timer(Duration(seconds: 10), () => Get.back());
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
    currentWorkingCount.value = 0;
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
    if (currentWorkingCount.value >= defaultWorkingCount)
      currentWorkingCount.value = 0;
    canPaused.value = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      currentWorkingCount.value++;
      if (currentWorkingCount.value == defaultBreakTime) {
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
          currentWorkingCount.value = 0;
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
