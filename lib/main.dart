import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:isar/isar.dart';
import 'package:pomotica/core/myIsar.dart';
import 'package:pomotica/database/tasksOrderCrud.dart';
import 'package:pomotica/database/userDataCrud.dart';
import 'package:pomotica/logic/assetPathLogic.dart';
import 'package:pomotica/model/pomoticaTasksOrderModel.dart';
import 'package:pomotica/screen/HomeScreeen.dart/homeScreen.dart';
import 'package:pomotica/screen/loadingScreen.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/screen/authScreen.dart';
import 'package:flutter/material.dart';
import 'package:pomotica/services/userDataService.dart';

main() async {
  await MyIsar().init();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyAppController ctrl = Get.put(MyAppController());
    Isar isar = MyIsar.isar;
    return GetMaterialApp(
      title: 'Pomotica',
      debugShowCheckedModeBanner: false,
      theme: MyColors.colorThemeData(),
      // home: Scaffold(
      //   // resizeToAvoidBottomInset: false,
      //     body: MyTimePicker(),
      // )
      home: !ctrl.launched
          ? FutureBuilder(
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return LoadingScreen();
                } else if (snapshot.data.toString().contains("Not Connected")) {
                  return HomeScreen(
                    isNetConnected: false,
                  );
                } else if (snapshot.data.toString().contains("Error")) {
                  return HomeScreen(isSomethingWentWrong: true);
                } else {
                  TasksOrderCrud.tasksOrderCreate(
                      isar, snapshot.requireData! as List<PomoticaTasksOrder>);
                  if (snapshot.data == "" || snapshot.data == null) {
                    return AuthScreen();
                  }

                  return HomeScreen();
                }
              }),
              future: UserDataService().habiticaToPomoticaTaskModel(),
            )
          : HomeScreen(),
    );
  }
}

class MyAppController extends GetxController {
  get launched => true;
}
