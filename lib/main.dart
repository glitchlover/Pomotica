import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomotica/database/tasksOrderCrud.dart';
import 'package:pomotica/model/pomoticaTasksOrderModel.dart';
import 'package:pomotica/screen/homeScreen.dart';
import 'package:pomotica/screen/internetNotFound.dart';
import 'package:pomotica/screen/loadingScreen.dart';
import 'package:pomotica/screen/somethingWentWrongScreen.dart';
import 'package:pomotica/services/documentServices.dart';
import 'package:pomotica/services/habiticaAuthServices.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/screen/authScreen.dart';
import 'package:flutter/material.dart';
import 'package:pomotica/services/userDataService.dart';

main() async {
  // await TasksOrderCrud();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Pomotica',
        debugShowCheckedModeBanner: false,
        theme: MyColors.colorThemeData(),
        home: FutureBuilder(
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return LoadingScreen();
            } else if (snapshot.data == "Not Connected") {
              return InternetNotFoundScreen();
            } else if (snapshot.data == "Error") {
              return SomethingWentWrongScreen();
            } else {
              print("snapshot: " +
                  (snapshot.data.toString().contains("Error")
                      ? "Error"
                      : "No Error"));
              print("snapshot: " + snapshot.data.toString());
              if (snapshot.data == "" || snapshot.data == null) {
                return AuthScreen();
              }
              return HomeScreen();
            }
          }),
          future: UserDataService().habiticaToPomoticaTaskModel(),
        ));
  }
}