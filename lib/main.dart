import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:isar/isar.dart';
import 'package:pomotica/database/tasksOrderCrud.dart';
import 'package:pomotica/model/pomoticaTasksOrderModel.dart';
import 'package:pomotica/screen/homeScreen.dart';
import 'package:pomotica/screen/internetNotFound.dart';
import 'package:pomotica/screen/loadingScreen.dart';
import 'package:pomotica/screen/somethingWentWrongScreen.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/screen/authScreen.dart';
import 'package:flutter/material.dart';
import 'package:pomotica/services/userDataService.dart';
import 'package:pomotica/widget/HomeScreenWidget.dart/habiticaCard.dart';

main() async {
  await TasksOrderCrud().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Isar isar = TasksOrderCrud.isar;
    return GetMaterialApp(
        title: 'Pomotica',
        debugShowCheckedModeBanner: false,
        theme: MyColors.colorThemeData(),
        // home: Scaffold(
        //     body: HabiticaCard(
        //   title: "hello",
        //   type: "Habit",
        //   notes: "Some notes",
        // ))
        home: StreamBuilder(
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return LoadingScreen();
            } else if (snapshot.data.toString().contains("Not Connected")) {
              return const InternetNotFoundScreen();
            } else if (snapshot.data.toString().contains("Error")) {
              return const SomethingWentWrongScreen();
            } else {
              print("snapshot: " +
                  (snapshot.data.toString().contains("Error")
                      ? "Error"
                      : "No Error"));
              TasksOrderCrud.tasksOrderCreate(isar, snapshot.requireData! as List<PomoticaTasksOrder>);
              if (snapshot.data == "" || snapshot.data == null) {
                return AuthScreen();
              }
              return HomeScreen();
            }
          }),
          stream: UserDataService().habiticaToPomoticaTaskModel().asStream(),
        )
        );
  }
}
