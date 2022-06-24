import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/pomoSpace.dart';

import '../../../../../widget/myStepperProgressBar.dart';

class PomodoroSessionView extends StatelessWidget {
  final PomoSpaceControllers pctrl;
  const PomodoroSessionView({Key? key, required this.pctrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    PomodoroSessionViewController ctrl =
        Get.put(PomodoroSessionViewController());
    // var icons = ctrl.icons;
    return Column(
      children: [
        // Obx(() => MyStepProgressBar(
        //     currentStep: pctrl.currentSessions.value,
        //     totalSteps: pctrl.defaultSessions)),
        // SizedBox(width: 80, height: 30),
        Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Obx(() => ctrl.buildBadge(ctrl.icons,
                pctrl.currentSessions.value, pctrl.defaultSessions.value))),
      ],
    );
  }
}

class PomodoroSessionViewController extends GetxController {
  RxList<Image> icons = <Image>[].obs;

  Widget buildBadge(RxList<Image> icons, int done, int total) {
    icons.clear();
    update();
    for (int i = 0; i < total; i++) {
      if (i >= done) {
        icons.add(undoneIcon());
        continue;
      }
      icons.add(doneIcon());
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.center, children: icons.value);
  }

  doneIcon() {
    return Image.asset("assets/img/key_found.png", height: 40, width: 40);
  }

  undoneIcon() {
    return Image.asset("assets/img/key_not_found.png", height: 30, width: 30);
  }
}
