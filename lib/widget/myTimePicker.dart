import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:pixelarticons/pixelarticons.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/pomoSpace.dart';

import '../Themes/myText.dart';
import '../database/userDataCrud.dart';

class MyTimePicker extends StatelessWidget {
  final PomoSpaceControllers pctrl;
  const MyTimePicker({Key? key, required this.pctrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MyTimePickerController ctrl = Get.put(MyTimePickerController());
    return AlertDialog(
      backgroundColor: MyColors.appBackgroundColor,
      elevation: 2,
      content: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              MyText("Focus Time: ", color: MyColors.primaryWhite).techi(),
              Obx(() => MyNumberPicker(
                    ctrl: ctrl,
                    value: ctrl.focusTime.value,
                    minValue: 10,
                    maxValue: 60,
                    step: 5,
                    onChanged: (value) {
                      ctrl.setFocusTime(value);
                    },
                  )),
              MyText("Break Time: ", color: MyColors.primaryWhite).techi(),
              Obx(() => MyNumberPicker(
                    ctrl: ctrl,
                    value: ctrl.breakTime.value,
                    step: 5,
                    minValue: 5,
                    maxValue: 30,
                    onChanged: (value) {
                      ctrl.setBreakTime(value);
                    },
                  )),
              MyText("Number of Sessions: ", color: MyColors.primaryWhite)
                  .techi(),
              Obx(() => MyNumberPicker(
                    ctrl: ctrl,
                    value: ctrl.sessionNumber.value,
                    minValue: 2,
                    maxValue: 6,
                    onChanged: (value) {
                      ctrl.setSessionNumber(value);
                    },
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          MyText("Coins: ").techi(),
                          Obx(() =>
                              MyText(ctrl.pomoCoins.string).techiNumber(16)),
                        ],
                      ),
                      Row(
                        children: [
                          MyText("Gems: ").techi(),
                          Obx(() =>
                              MyText(ctrl.pomoGems.string).techiNumber(16)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset("assets/img/treasure_closed.png", scale: 2)
                ],
              ),
            ],
          ),
        ),
      ),
      actions: [
        ElevatedButton.icon(
            onPressed: () {
              UserDataCrud().updateUserData(
                  defaultWorkingTime: ctrl.getFocusTime(),
                  breakTime: ctrl.getBreakTime(),
                  numberOfSessions: ctrl.getSessionNumber());

              pctrl.updateVar(
                  defaultWorkingTime: ctrl.getFocusTime().obs,
                  breakTime: ctrl.getBreakTime().obs,
                  numberOfSessions: ctrl.getSessionNumber().obs);

              Navigator.pop(context);
            },
            icon: Icon(Pixel.check),
            label: MyText("OK").techi(),
            style: ElevatedButton.styleFrom(
              primary: MyColors.green,
            )),
        ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: ImageIcon(AssetImage("assets/icons/cross.png"), size: 14),
            label: MyText("Cancel").techi(),
            style: ElevatedButton.styleFrom(primary: MyColors.grey)),
      ],
    );
  }
}

class MyNumberPicker extends StatelessWidget {
  MyNumberPicker(
      {Key? key,
      this.step,
      required this.ctrl,
      required this.value,
      required this.minValue,
      required this.maxValue,
      required this.onChanged})
      : super(key: key);

  int value;
  final MyTimePickerController ctrl;
  final int? step;
  final int minValue;
  final int maxValue;
  final Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      step: step ?? 1,
      minValue: minValue,
      maxValue: maxValue,
      value: value,
      axis: Axis.horizontal,
      textStyle:
          MyText.textThemeTechi2(MyColors.primaryWhite, FontWeight.normal, 10),
      selectedTextStyle:
          MyText.textThemeTechi2(MyColors.pink, FontWeight.normal, 20),
      onChanged: onChanged,
    );
  }
}

class MyTimePickerController extends GetxController {
  Rx<int> focusTime = 25.obs;
  Rx<int> breakTime = 5.obs;
  Rx<int> sessionNumber = 4.obs;

  Rx<int> pomoCoins = 0.obs;
  Rx<int> pomoGems = 0.obs;

  @override
  onInit() {
    setReward();
    super.onInit();
  }

  void setReward() {
    pomoCoins.value = focusTime.value * sessionNumber.value;
    pomoGems.value =
        (sessionNumber.value / 2).toInt() + (focusTime.value / 20).toInt();
  }

  setFocusTime(value) {
    this.focusTime.value = value;
    setReward();
  }

  setBreakTime(value) {
    this.breakTime.value = value;
    setReward();
  }

  setSessionNumber(value) {
    this.sessionNumber.value = value;
    setReward();
  }

  int getFocusTime() => focusTime.value;
  int getBreakTime() => breakTime.value;
  int getSessionNumber() => sessionNumber.value;

  saveAndChange() {}
}
