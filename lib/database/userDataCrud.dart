import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomotica/core/myIsar.dart';
import 'package:pomotica/model/enums/pomodoroStatus.dart';
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
        numberOfSessions: 4,
        pomoCoins: 0,
        pomoGems: 0,
        currentSession: 0,
        currentStatus: PomodoroStatus.normal,
      );
      userDataCreate(userModel);
      return userModel;
    }
    return userData;
  }

  void updateUserData({int defaultWorkingTime = 25, int breakTime = 5, int numberOfSessions = 4}) async{
    PomoticaUserModel? userData = isar.pomoticaUserModels.getSync(1);
    var userModel = PomoticaUserModel(
      id: 1,
      defaultWorkingTime: defaultWorkingTime,
      breakTime: breakTime,
      bigBreakTime: 10,
      numberOfSessions: numberOfSessions,
      pomoCoins: 0,
      pomoGems: 0,
      currentSession: 0,
      currentStatus: PomodoroStatus.normal,
    );
    if (userData == null) {
      userDataCreate(userModel);
    } else {
      isar.writeTxnSync((isar) => 
        isar.pomoticaUserModels.putSync(userModel)
      );
    }
    // print(isar.pomoticaUserModels.getSync(1)!.defaultWorkingTime.toString());
  }
}
