import 'dart:async';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../model/pomoticaTasksOrderModel.dart';

class TasksOrderCrud {
  static late Isar isar;

  TasksOrderCrud() {
    // Timer(Duration(milliseconds: 100), () {
    //   init();
    // });
  }

  init() async {
    final dir = await getApplicationSupportDirectory();
    isar = await Isar.open(
      schemas: [PomoticaTasksOrderSchema],
      directory: dir.path,
    );
  }

  static List<int> tasksOrderCreate(Isar isar, List<PomoticaTasksOrder> tasksOrder) {
    for(var tasks in tasksOrder) {
      isar.writeTxnSync((isar) => {
          tasks.pomoticataskid =
              isar.pomoticaTasksOrders.putSync(tasks)
        });
    }
    
    return [];
  }

  static List<PomoticaTasksOrder> tasksOrderGetAll(Isar isar) {
    var allTasksOrder = isar.pomoticaTasksOrders.where().findAllSync();
    return allTasksOrder;
  }
}
