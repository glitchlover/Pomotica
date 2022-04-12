import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomotica/core/myIsar.dart';
import 'package:pomotica/model/pomoticaUserModel.dart';

import '../model/pomoticaTasksOrderModel.dart';

class UserDataCrud {
  static final Isar isar = MyIsar.isar;

  static List<int> userDataCreate(PomoticaUserModel userModel) {
    isar.writeTxnSync(
        (isar) => {userModel.id = isar.pomoticaUserModels.putSync(userModel)});

    return [];
  }

  static PomoticaUserModel userDataGetAll() {
    var userData = isar.pomoticaUserModels.getSync(1);
    if (userData == null) {
      var userModel = PomoticaUserModel(
          id: 1,
          defaultWorkingTime: 25,
          breakTime: 5,
          bigBreakTime: 10,
          numberOfSessions: 4);
      userDataCreate(userModel);
      return userModel;
    }
    return userData;
  }
}
