import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/pomoSpace.dart';
import 'package:pomotica/widget/myIconButton.dart';
import 'package:pomotica/widget/myMusicPlayer.dart';
import 'package:pomotica/widget/myTagList.dart';
import 'package:pomotica/widget/myTimePicker.dart';

class PomoCustomizers extends StatelessWidget {
  final PomoSpaceControllers ctrl;
  const PomoCustomizers({Key? key, required this.ctrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyIconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => MyTimePicker(
                        pctrl: ctrl,
                      ));
            },
            icon: Icon(Iconsax.edit)),
        MyIconButton(onPressed: () {
              showDialog(
                context: context, builder: (context) => MyMusicPlayer(pctrl: ctrl)
              );
            },
            icon: Icon(Iconsax.music)),
        MyIconButton(
            onPressed: () {
              showDialog(context: context, builder: (context) => MyTagList());
            },
            icon: Icon(Iconsax.tag)),
        MyIconButton(
            onPressed: () {},
            icon: Icon(Iconsax.screenmirroring)),
        MyIconButton(onPressed: () {}, icon: Icon(Iconsax.chart_21)),
      ],
    );
  }
}
