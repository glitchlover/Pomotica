import 'dart:async';

import 'package:http/http.dart';
import 'package:isar/isar.dart';
import 'package:pomotica/core/habiticaApi.dart';
import 'package:pomotica/model/authModel.dart';
import 'package:pomotica/model/habiticaTasksModel.dart';
import 'package:pomotica/model/pomoticaUserModel.dart';
import 'package:pomotica/services/documentServices.dart';
import 'package:pomotica/services/habiticaAuthServices.dart';
import 'package:pomotica/services/myHabiticaAuth.dart';

import '../model/habiticaUserModel.dart';
import '../model/pomoticaTasksOrderModel.dart';

class UserDataService {
  final documentServices = new DocumentServices(db: "habitica_user");
  String username = "";
  String taskpath = '/api/v3/tasks/user';

  setUsername() async {}

  getUsername() async {
    var habiticaUserModel = await documentServices.retriveUser();
    username = habiticaUserModel.data.profile.name;
    print(username);
    return username;
  }

  setTask() {}

  Future<List<Datum>?> fetchTaskModel() async {
    var response = await HabiticaApi(path: taskpath).getApiResponse();

    if (response.statusCode == 200) {
      // print(response.body);
      HabiticaTaskModel taskModel = HabiticaTaskModel.fromJson(response.body);
      // await DocumentServices(db: "tasksOrder").saveTasksOrder(taskModel);
      return taskModel.data;
    } else {
      return [];
    }
  }

  Future<HabiticaTaskModel> getTasksOrder() async {
    var tasksOrderModel = await documentServices.retriveTasksOrder();
    return tasksOrderModel;
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
          isSync: true));
    }

    return pomoticaTasksOrder;
  }
}
