import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomotica/core/myIsar.dart';

import '../model/pomoticaTasksOrderModel.dart';

class TasksOrderCrud {
  static tasksOrderCreate(Isar isar, List<PomoticaTasksOrder> tasks) {
    for (var task in tasks) {
      isar.writeTxnSync((isar) => isar.pomoticaTasksOrders.putSync(task));
    }
  }

  static tasksOrderGetAll(Isar isar) {
    return isar.pomoticaTasksOrders.where().findAllSync();
  }
}
