import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/screen/HomeScreeen.dart/homeScreen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      
        child: IconButton(
            onPressed: () {
              Get.offAll(()=>HomeScreen());
            },
            icon: Icon(Iconsax.back_square))),
    );
  }
}
