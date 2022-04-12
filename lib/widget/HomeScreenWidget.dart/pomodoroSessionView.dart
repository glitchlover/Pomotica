import 'package:flutter/material.dart';

class PomodoroSessionView extends StatelessWidget {
  final int total;
  final int done;

  const PomodoroSessionView({Key? key, required this.total, required this.done})
      : super(key: key);

  doneIcon() {
    return Image.asset("asset/img/badge_active.png", height:30, width:30);
  }

  undoneIcon() {
    return Image.asset("asset/img/badge_deactive.png", height:30, width:30);
  }

  @override
  Widget build(BuildContext context) {
    List<Image> icons = [];

    for (int i = 0; i < total; i++) {
      if (i >= done) {
        icons.add(undoneIcon());
        continue;
      }
      icons.add(doneIcon());
    }
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: icons
      ),
    );
  }
}
