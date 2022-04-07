import 'dart:async';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../model/pomoticaTasksOrderModel.dart';

class TasksOrderCrud {
  static late Isar isar;

  TasksOrderCrud() {
    Timer(Duration(milliseconds: 100), () {
      init();
    });
  }

  init() async {
    final dir = await getApplicationSupportDirectory();
    isar = await Isar.open(
      schemas: [PomoticaTasksOrderSchema],
      directory: dir.path,
    );
  }

  static List<int> tasksOrderCreate(Isar isar, PomoticaTasksOrder tasksOrder) {
    isar.writeTxnSync((isar) => {
          tasksOrder.pomoticataskid =
              isar.pomoticaTasksOrders.putSync(tasksOrder)
        });
    return [];
  }

  static IsarCollection<PomoticaTasksOrder> tasksOrderGetAll(Isar isar) {
    var allTasksOrder = isar.pomoticaTasksOrders;
    return allTasksOrder;
  }
}
