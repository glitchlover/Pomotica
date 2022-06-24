import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/Themes/myText.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/main.dart';
import 'package:pomotica/screen/authScreen.dart';
import 'package:pomotica/screen/HomeScreeen.dart/homeScreen.dart';
import 'package:pomotica/screen/somethingWentWrongScreen.dart';
import 'package:pomotica/services/habiticaAuthServices.dart';

import '../services/userDataService.dart';
import 'loadingScreen.dart';

class InternetNotFoundScreen extends StatelessWidget {
  const InternetNotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Spacer(),
          IconButton(
              onPressed: () {
                var auth = HabiticaAuthServices.getAuth();
                Get.off(() => LoadingScreen());
                if (auth == "Not Connected") {
                  Get.back();
                } else if (auth == "Error") {
                  Get.off(() => SomethingWentWrongScreen());
                } else {
                  print("snapshot: " +
                      (auth.toString().contains("Error")
                          ? "Error"
                          : "No Error"));
                  print("snapshot: " + auth.toString());
                  if (auth == "" || auth == null) {
                    Get.off(AuthScreen());
                  }
                  var data = UserDataService()
                      .habiticaToPomoticaTaskModel()
                      .asStream();
                  Get.off(() => HomeScreen());
                }
              },
              icon: Icon(Iconsax.repeat)),
          MyText("Internet Not Found").heading2(),
          Spacer(),
        ],
      )),
    );
  }
}
