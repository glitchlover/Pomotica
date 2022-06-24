import 'dart:async';
import 'dart:io';
import 'package:isar/isar.dart';
import 'package:pomotica/core/habiticaApi.dart';
import 'package:pomotica/core/myIsar.dart';
import 'package:pomotica/database/userDataCrud.dart';
import 'package:pomotica/model/habiticaTasksModel.dart';
import 'package:pomotica/model/pomoticaUserModel.dart';
import 'package:pomotica/services/documentServices.dart';

import '../model/enums/pomodoroStatus.dart';
import '../model/pomoticaTasksOrderModel.dart';

class UserDataService {
  final documentServices = new DocumentServices(db: "habitica_user");
  String username = "";
  int defaultWorkingTime = 25;
  int breakTime = 5;
  int bigBreakTime = 10;
  int numberOfSessions = 4;
  PomodoroStatus currentStatus = PomodoroStatus.normal;  
  int currentSession = 0;
  int pomoCoins = 0;
  int pomoGems = 0;
  String taskpath = '/api/v3/tasks/user';

  getUsername() async {
    var habiticaUserModel = await documentServices.retriveUser();
    username = habiticaUserModel.data.profile.name;
    print(username);
    return username;
  }

  fetchTaskModel() async {
    var response = await HabiticaApi(path: taskpath).getApiResponse();

    try {
      if (response.statusCode == 200) {
        HabiticaTaskModel taskModel = HabiticaTaskModel.fromJson(response.body);
        return taskModel.data;
      } else {
        return "Error!: statusCode = " + response.statusCode.toString();
      }
    } on SocketException catch (e) {
      return "Not Connected: " + e.message;
    }
  }

  Future<List<PomoticaTasksOrder>> habiticaToPomoticaTaskModel() async {
    List<PomoticaTasksOrder> pomoticaTasksOrder = [];
    List<Datum>? data = await fetchTaskModel();

    for (int i = 0; i < data!.length; i++) {
      pomoticaTasksOrder.add(PomoticaTasksOrder(
          pomoticataskid: i,
          frequency: data[i].frequency,
          type: data[i].type,
          notes: data[i].notes,
          tags: data[i].tags,
          value: data[i].value,
          priority: data[i].priority,
          attribute: data[i].attribute,
          createdAt: data[i].createdAt,
          updatedAt: data[i].updatedAt,
          id: data[i].id,
          text: data[i].text,
          alias: data[i].alias,
          everyX: data[i].everyX,
          streak: data[i].streak,
          yesterDaily: data[i].yesterDaily,
          completed: data[i].completed,
          collapseChecklist: data[i].collapseChecklist,
          isDue: data[i].isDue,
          isActive: false,
          isSync: true));
    }

    return pomoticaTasksOrder;
  }

  saveUserData(PomoticaUserModel userModel) {
    Isar isar = MyIsar.isar;
    UserDataCrud.userDataCreate(userModel);
  }

  PomoticaUserModel retriveUserData() {
    Isar isar = MyIsar.isar;
    PomoticaUserModel? userModel = isar.pomoticaUserModels.getSync(1);
    if (userModel == null) {
      userModel = PomoticaUserModel(
        defaultWorkingTime: defaultWorkingTime,
        breakTime: breakTime,
        bigBreakTime: bigBreakTime,
        numberOfSessions: numberOfSessions,
        pomoCoins: pomoCoins,
        pomoGems: pomoGems,
        currentStatus: currentStatus,
        currentSession: currentSession, 
      );
      saveUserData(userModel);
      return userModel;
    }
    return userModel;
  }
}
