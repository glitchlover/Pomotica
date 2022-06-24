import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/Themes/myText.dart';
import 'package:pomotica/logic/assetPathLogic.dart';
import 'package:pomotica/model/pomoticaTasksOrderModel.dart';
import 'package:pomotica/screen/authScreen.dart';
import 'package:pomotica/screen/settingScreen.dart';
import 'package:pomotica/services/habiticaAuthServices.dart';
import 'package:pomotica/services/userDataService.dart';

import '../../model/authModel.dart';
import 'components/PomoSpace/pomoSpace.dart';
import 'components/pomoTasksOrderInput/pomoTasksOrderInput.dart';

class HomeScreen extends StatelessWidget {
  bool? isNetConnected;
  bool? isSomethingWentWrong;

  HomeScreen({Key? key, this.isNetConnected, this.isSomethingWentWrong})
      : super(key: key) {
    isNetConnected ??= true;
    isSomethingWentWrong ??= false;
  }

  @override
  Widget build(BuildContext context) {
    final HomeScreenController controller = Get.put(HomeScreenController(
        isNetConnected: isNetConnected,
        isSomethingWentWrong: isSomethingWentWrong));

    var appBar_ = AppBar(
      title: Obx(() => MyText(controller.username.value).heading2()),
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
            children: [
              PomoSpace(),
              SizedBox(
                height: 15,
              ),
              PomoTasksOrderInput()
            ],
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

class HomeScreenController extends GetxController {
  var username = "".obs;
  bool? isNetConnected;
  bool? isSomethingWentWrong;

  HomeScreenController(
      {required this.isNetConnected, required this.isSomethingWentWrong});

  @override
  void onInit() async {
    username.value = await UserDataService().getUsername();
    print("controller: " + username.value);
    AssetPathLogic().loadFiles();
    update();

    if (!(isNetConnected as bool)) {
      Get.snackbar("Internet is not connected",
              "Please try to connect to the internet")
          .close(withAnimations: true);
    }
    if (isSomethingWentWrong as bool) {
      Get.snackbar("Something went wrong",
              "Please enter an issue with details showed in debug under settings")
          .close(withAnimations: true);
    }
    super.onInit();
  }
}
