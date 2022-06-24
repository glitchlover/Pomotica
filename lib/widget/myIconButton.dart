import 'package:flutter/material.dart';

import '../Themes/myColors.dart';

class MyIconButton extends IconButton {
  MyIconButton({required VoidCallback? onPressed, required Widget icon})
      : super(onPressed: onPressed, icon: icon);
  IconButton paint() {
    return IconButton(
      icon: icon,
      onPressed: onPressed,
      splashRadius: 10.0,
      splashColor: MyColors.shadowColor,
    );
  }
}
