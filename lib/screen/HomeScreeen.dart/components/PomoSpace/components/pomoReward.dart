import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Themes/myText.dart';
import '../pomoSpace.dart';

class PomoRewards extends StatelessWidget {
  const PomoRewards({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final PomoSpaceControllers ctrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.topLeft,
                    height: 20,
                    child: Row(
                      children: [
                        MyText("Coins: "),
                        Obx(() => MyText(ctrl.pomoCoin.value.toString())),
                        SizedBox(width: 5),
                        MyText("Gems: "),
                        Obx(() => MyText(ctrl.pomoGems.value.toString())),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}