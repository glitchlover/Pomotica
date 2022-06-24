import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/widget/myConfetti.dart';

import '../../../../../Themes/myText.dart';
import '../pomoSpace.dart';

class PomoControls extends StatelessWidget {
  const PomoControls({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final PomoSpaceControllers ctrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => ctrl.canGoNext.value
              ? nextButton()
              : Container(),
        ),
        SizedBox(width: 10),
        Obx(() => ctrl.canPaused.value
            ? pauseButton()
            : Container()),
        Obx(() => ctrl.canStart.value
            ? startButton()
            : Container()),
        SizedBox(width: 10),
        Obx(() => ctrl.canGiveUp.value
            ? giveUpButton()
            : Container()),
        Obx(() => ctrl.canExit.value
            ? exitButton()
            : Container())
      ],
    );
  }

  ElevatedButton exitButton() {
    return ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(MyColors.grey),
              ),
              onPressed: () {
                ctrl.exit();
              },
              icon: Icon(Icons.exit_to_app),
              label: MyText("Exit").techi());
  }

  ElevatedButton giveUpButton() {
    return ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(MyColors.pinkDark),
              ),
              onPressed: () {
                ctrl.giveUp();
              },
              icon: Icon(Icons.stop),
              label: MyText("Give Up!").techi());
  }

  ElevatedButton startButton() {
    return ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(MyColors.blue),
              ),
              onPressed: () {
                ctrl.startTimer();
              },
              icon: Icon(Icons.play_arrow),
              label: MyText("Start").techi());
  }

  ElevatedButton pauseButton() {
    return ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(MyColors.blue),
              ),
              onPressed: () {
                ctrl.pause();
              },
              icon: Icon(Icons.pause),
              label: MyText("Pause").techi());
  }

  ElevatedButton nextButton() {
    return ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyColors.green),
                ),
                onPressed: () {
                  ctrl.next();
                },
                icon: Icon(Icons.skip_next),
                label: MyText("Next").techi(),
              );
  }
}
