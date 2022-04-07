import 'package:flutter/material.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:iconsax/iconsax.dart';

class MyTextField extends TextField {
  final String label;
  final TextEditingController? txtController;
  final String? helperTxt;
  bool isPwd;
  bool isApi;
  bool isUserId;

  MyTextField({
    Key? key,
    required this.label,
    this.helperTxt,
    this.txtController,
    this.isApi = false,
    this.isUserId = false,
    this.isPwd = false
  }) : super(key: key);


  Widget pwdPaint() {
    isPwd = true;
    return scaleton();
  }

  Widget scaleton() {
    var seepass = false;
    return TextField(
        controller: txtController,
        obscureText: seepass,
        cursorColor: MyColors.primaryColor,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: MyColors.primaryColorLight),
            helperText: helperTxt,
            helperStyle: TextStyle(color: MyColors.pink),
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            suffix: isPwd
                ? IconButton(
                    constraints: BoxConstraints(),
                    onPressed: () {
                      seepass = !seepass;
                    },
                    icon: Icon(
                      seepass ? (Iconsax.eye_slash) : (Iconsax.eye),
                      color: MyColors.primaryColor,
                    ),
                    padding: EdgeInsets.zero,
                    splashRadius: 20,
                    splashColor: MyColors.primaryColor.withOpacity(.2))
                : null,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0))));
  }

}

