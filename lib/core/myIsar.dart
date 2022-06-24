import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomotica/model/musicModel.dart';

import '../model/pomoticaTasksOrderModel.dart';
import '../model/pomoticaUserModel.dart';

class MyIsar {
  static late Isar isar;

  init() async {
    final dir = await getApplicationSupportDirectory();
    print(dir.path);
    isar = await Isar.open(
      schemas: [PomoticaTasksOrderSchema, PomoticaUserModelSchema, MusicModelSchema],
      directory: dir.path,
    );
  }
}
