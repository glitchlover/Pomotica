import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/Themes/myText.dart';
import 'package:pomotica/widget/myIconButton.dart';
import 'package:pomotica/widget/myMusicPlayer.dart';

class SetMarket extends StatelessWidget {
  const SetMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: MyColors.appBackgroundColor,
      title: MyText('Add Music').heading3(),
      content: SizedBox(
        width: Get.width - 185,
        height: Get.height - 155,
        child: ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          itemBuilder: ((context, index) {
            return FormTiles(index: index);
          }),
        ),
      ),
      actions: [
        MyIconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Iconsax.backward)),
      ],
    );
  }
}

class FormTiles extends StatelessWidget {
  int index;
  FormTiles({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FieldTiles(index: index),
      ],
    );
  }
}

class FieldTiles extends StatelessWidget {
  final int index;
  const FieldTiles({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Form(
          child: Column(
            children: [
              const Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: MusicTitle(),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText("Price:").text(),
                  SizedBox(
                    width: 10,
                  ),
                  ],
                ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText("Price Type:").text(),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                  child: Checkbox(
                    value: false,
                  activeColor: Colors.orange,
                  onChanged: (value) {}
                  ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText("Purchased?").text(),
                  SizedBox(
                    width: 10,
                  ),
                  DropdownButton<String>(
              value: "Coin",
              isExpanded: true,
              icon: Icon(Icons.keyboard_arrow_down, size: 22),
              underline: SizedBox(),
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return new DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
                );
              }).toList(),
              onChanged: (value) {
                
                // dropdownValue = value;
              }
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class MusicTitle extends StatelessWidget {
  const MusicTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        MyText("Music").text(),
        SizedBox(
          width: 10,
        ),
        Icon(Iconsax.music),
      ],
    );
  }
}
