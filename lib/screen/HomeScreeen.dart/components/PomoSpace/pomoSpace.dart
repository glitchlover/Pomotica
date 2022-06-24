import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixelarticons/pixel.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/Themes/myText.dart';
import 'package:pomotica/database/userDataCrud.dart';
import 'package:pomotica/model/enums/pomodoroStatus.dart';
import 'package:pomotica/model/pomoticaUserModel.dart';
import 'package:pomotica/widget/myConfetti.dart';

import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/components/pomoClock.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/components/pomoControls.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/components/pomodoroSessionView.dart';

import 'components/downwordScroller.dart';
import 'components/pomoCustomizers.dart';
import 'components/pomoReward.dart';

class PomoSpace extends StatelessWidget {
  PomoSpace({Key? key}) : super(key: key);
  PomoSpaceControllers ctrl = Get.put(PomoSpaceControllers());

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        PomoRewards(ctrl: ctrl),
        SizedBox(
          height: Get.height,
          child: Center(
              child: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/img/pomobase.png",
                    width: 100, height: 100),
              ),
              SizedBox(
                height: 20,
              ),
              PomoClock(ctrl: ctrl),
              PomodoroSessionView(
                pctrl: ctrl,
              ),
              SizedBox(
                height: 10,
              ),
              PomoControls(ctrl: ctrl),
              SizedBox(height: 40),
              PomoCustomizers(ctrl: ctrl),
              DownwordScroller(),
              Spacer(
                flex: 1,
              ),
            ],
          )),
        ),
        Obx(() => MyConfetti(
              isRewarded: ctrl.canReward.value,
            )),
      ],
    );
  }
}

class PomoSpaceControllers extends GetxController
    with GetTickerProviderStateMixin {
  var userData = UserDataCrud.userDataGetAll();

  ////////// traking variables //////////
  Rx<int> currentTimeCount = 0.obs;
  Rx<bool> canPaused = false.obs;
  Rx<bool> canStart = false.obs;
  Rx<bool> canExit = false.obs;
  Rx<bool> canGiveUp = false.obs;
  Rx<bool> canGoNext = false.obs;
  Rx<bool> canTrack = false.obs;
  Rx<bool> canReward = false.obs;
  Timer? _timer;

  ////////// pomodoro constant variables //////////
  late Rx<int> defaultBreakTime = 0.obs;
  late Rx<int> defaultWorkingCount = 0.obs;
  late Rx<int> defaultSessions = userData.numberOfSessions.obs;

  ///////// others //////////
  late Rx<PomodoroStatus> currentStatus = userData.currentStatus.obs;
  late Rx<int> currentTotalCount = 0.obs; //TODO: future application
  late Rx<int> currentSessions = userData.currentSession.obs;
  late Rx<int> pomoCoin = userData.pomoCoins.obs;
  late Rx<int> pomoGems = userData.pomoGems.obs;

  @override
  void onInit() {
    initVar();
    setStatus(PomodoroStatus.normal);
    update();
    super.onInit();
  }

  void initVar() {
    defaultWorkingCount.value = userData.defaultWorkingTime * 60;
    defaultBreakTime.value = userData.breakTime * 60;
    update();
  }

  void updateVar(
      {required Rx<int> defaultWorkingTime,
      required Rx<int> breakTime,
      required Rx<int> numberOfSessions}) {
    defaultBreakTime.value = breakTime.value * 60;
    defaultWorkingCount.value = defaultWorkingTime.value * 60;
    defaultSessions.value = numberOfSessions.value;
    update();
  }

  void setStatus(PomodoroStatus currentStatus) {
    this.currentStatus.value = currentStatus;
    update();
    print("currentStatus: " + this.currentStatus.value.toString());
    switch (currentStatus) {
      case PomodoroStatus.normal:
        canPaused.value = false;
        canStart.value = true;
        canExit.value = false;
        canGiveUp.value = false;
        canGoNext.value = false;
        canTrack.value = false;
        canReward.value = false;
        update();
        break;

      case PomodoroStatus.runningPomodoro:
        canPaused.value = true;
        canStart.value = false;
        canExit.value = false;
        canGiveUp.value = true;
        canGoNext.value = false;
        canTrack.value = false;
        canReward.value = false;
        update();
        break;

      case PomodoroStatus.pausedPomodoro:
        canPaused.value = false;
        canStart.value = true;
        canExit.value = false;
        canGiveUp.value = true;
        canGoNext.value = false;
        canTrack.value = true;
        canReward.value = false;
        _timer?.cancel();
        update();
        break;

      case PomodoroStatus.extraPomodoro:
        canPaused.value = true;
        canStart.value = false;
        canExit.value = true;
        canGiveUp.value = false;
        canGoNext.value = true;
        canTrack.value = true;
        canReward.value = false;
        update();
        break;

      case PomodoroStatus.pausedExtraPomodoro:
        canPaused.value = false;
        canStart.value = true;
        canExit.value = true;
        canGiveUp.value = false;
        canGoNext.value = true;
        canTrack.value = true;
        canReward.value = false;
        _timer?.cancel();
        update();
        break;

      case PomodoroStatus.runningShortBreak:
        canPaused.value = false;
        canStart.value = false;
        canExit.value = true;
        canGiveUp.value = false;
        canGoNext.value = true;
        canTrack.value = false;
        canReward.value = false;
        update();
        break;

      case PomodoroStatus.runningLongBreak:
        canPaused.value = false;
        canStart.value = false;
        canExit.value = true;
        canGiveUp.value = false;
        canGoNext.value = true;
        canTrack.value = false;
        canReward.value = false;
        update();
        break;

      case PomodoroStatus.extraBreak:
        canPaused.value = false;
        canStart.value = false;
        canExit.value = true;
        canGiveUp.value = false;
        canGoNext.value = true;
        canTrack.value = true;
        canReward.value = false;
        update();
        break;

      case PomodoroStatus.setFinished:
        canPaused.value = false;
        canStart.value = true;
        canExit.value = true;
        canGiveUp.value = false;
        canGoNext.value = true;
        canTrack.value = false;
        canReward.value = true;
        _timer?.cancel();
        update();
        break;

      case PomodoroStatus.exitPomodoro:
        canPaused.value = false;
        canStart.value = true;
        canExit.value = false;
        canGiveUp.value = false;
        canGoNext.value = false;
        canTrack.value = false;
        canReward.value = false;
        _timer?.cancel();
        update();
        break;

      case PomodoroStatus.giveUp:
        canPaused.value = false;
        canStart.value = true;
        canExit.value = false;
        canGiveUp.value = false;
        canGoNext.value = false;
        canTrack.value = false;
        canReward.value = false;
        _timer?.cancel();
        update();
        break;
    }
  }

////////////////////// Running Pomodoro //////////////////////
  void startTimer() {
    _timer?.cancel();
    if (currentStatus == PomodoroStatus.pausedExtraPomodoro) {
      setStatus(PomodoroStatus.extraPomodoro);
    } else {
      setStatus(PomodoroStatus.runningPomodoro);
    }
    _timer = Timer.periodic(Duration(milliseconds: 1), (timer) async {
      currentTimeCount.value++;
      update();

      if (currentTimeCount.value == defaultWorkingCount.value) {
        setStatus(PomodoroStatus.extraPomodoro);
        currentSessions.value++;
        Get.snackbar(
          "You have done a lot!",
          "Go and take a break",
          duration: Duration(seconds: 10),
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          backgroundColor: MyColors.blue,
          snackStyle: SnackStyle.FLOATING,
        );
      }
    });
  }

//////////////////////// Running Break //////////////////////////
  void breakTimeStart() {
    _timer?.cancel();
    currentTimeCount.value = 0;
    update();
    if (currentSessions.value == defaultSessions.value) {
      setStatus(PomodoroStatus.setFinished);
      currentSessions.value = 0;
      giveRewards();
      update();
    } else {
      setStatus(PomodoroStatus.runningShortBreak);
      _timer = Timer.periodic(Duration(milliseconds: 1), (timer) async {
        currentTimeCount.value++;
        update();
        if (currentTimeCount.value == defaultBreakTime) {
          Get.snackbar(
            "Break time is over.",
            "Go and work harder",
            duration: Duration(seconds: 10),
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
            backgroundColor: MyColors.blue,
            snackStyle: SnackStyle.FLOATING,
          );
        }
      });
    }
  }

//////////////////////// next //////////////////////////

  void next() {
    if (currentStatus.value == PomodoroStatus.extraPomodoro ||
        currentStatus.value == PomodoroStatus.pausedExtraPomodoro) {
      currentSessions.value == defaultSessions.value
          ? setStatus(PomodoroStatus.runningLongBreak)
          : setStatus(PomodoroStatus.runningShortBreak);
      breakTimeStart();
    } else if (currentStatus.value == PomodoroStatus.runningLongBreak ||
        currentStatus.value == PomodoroStatus.runningShortBreak ||
        currentStatus.value == PomodoroStatus.extraBreak) {
      setStatus(PomodoroStatus.runningPomodoro);
      startTimer();
    } else {
      print("Status not found for " + currentStatus.string);
    }
    currentTimeCount.value = 0;
    Get.closeAllSnackbars();
    update();
  }

////////////////////// Pause and Stop //////////////////////
  void pause() {
    if (currentStatus == PomodoroStatus.runningPomodoro)
      setStatus(PomodoroStatus.pausedPomodoro);
    else if (currentStatus == PomodoroStatus.extraPomodoro)
      setStatus(PomodoroStatus.pausedExtraPomodoro);
    else
      print("Pause not found for" + currentStatus.toString());
  }

  void giveUp() {
    setStatus(PomodoroStatus.giveUp);
    currentTimeCount.value = 0;
    Get.closeAllSnackbars();
    update();
  }

  void exit() {
    setStatus(PomodoroStatus.exitPomodoro);
    currentTimeCount.value = 0;
    Get.closeAllSnackbars();
    update();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  ////////////////////// Rewards //////////////////////
  void giveRewards() {
    Get.dialog(AlertDialog(
      title: MyText("Reward").techi(),
    ));
  }
}
