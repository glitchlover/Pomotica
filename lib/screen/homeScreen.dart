import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/Themes/myText.dart';
import 'package:pomotica/model/pomoticaTasksOrderModel.dart';
import 'package:pomotica/screen/authScreen.dart';
import 'package:pomotica/screen/settingScreen.dart';
import 'package:pomotica/services/habiticaAuthServices.dart';
import 'package:pomotica/services/userDataService.dart';

import '../model/authModel.dart';
import '../widget/HomeScreenWidget.dart/pomoSpace.dart';
import '../widget/HomeScreenWidget.dart/pomoTasksOrderInput.dart';

class HomeScreen extends StatelessWidget {
  final data;
  final HomeScreenController controller = Get.put(HomeScreenController());

  HomeScreen({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appBar_ = AppBar(
      title: Obx(() =>
          MyText("Welcome ${controller.username.value} to Pomotica")
              .heading2()),
      actions: [
        IconButton(
            onPressed: () {
              Get.to(SettingScreen());
            },
            icon: Icon(Iconsax.setting)),
        IconButton(
            onPressed: () {
              loggedOut();
            },
            icon: Icon(Iconsax.logout))
      ],
    );

    return Scaffold(
        appBar: appBar_,
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          padding: EdgeInsets.zero,
          child: Column(
            children: [PomoSpace(), PomoTasksOrderInput()],
          ),
        ));
  }

  loggedOut() async {
    AuthModel authModel = await HabiticaAuthServices.getAuth();
    HabiticaAuthServices([authModel.apiKey, authModel.userId])
        .setAuth(loggedIn_: false);
    Get.offAll(AuthScreen());
  }
}

class PomoTasksOrdersInput {}

class HomeScreenController extends GetxController {
  var username = "".obs;

  @override
  void onInit() async {
    username.value = await UserDataService().getUsername();
    print("controller: " + username.value);
    update();
    super.onInit();
  }
}
