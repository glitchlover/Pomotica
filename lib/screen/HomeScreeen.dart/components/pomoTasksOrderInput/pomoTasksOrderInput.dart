import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:pomotica/core/myIsar.dart';
import 'package:pomotica/database/tasksOrderCrud.dart';
import 'package:pomotica/model/pomoticaTasksOrderModel.dart';
import 'package:pomotica/model/pomoticaUserModel.dart';
import 'package:pomotica/services/userDataService.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/pomoTasksOrderInput/components/habiticaCard.dart';

class PomoTasksOrderInput extends StatelessWidget {
  PomoTasksOrderInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PomoTasksOrderInputController>(
        init: PomoTasksOrderInputController(),
        initState: (_) {},
        builder: (value) {
          if (value.tasksOrder == null) return CircularProgressIndicator();
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (builder, index) => HabiticaCard(
                    title: value.tasksOrder[index].toString(),
                    type: value.tasksType[index].toString(),
                    dueDate: value.tasksDueDate[index],
                    notes: value.tasksNotes[index],
                    ),
                itemCount: value.tasksOrder.length,
              ));
        });
  }
}

class PomoTasksOrderInputController extends GetxController {
  List<dynamic> tasksOrder = [];
  List<dynamic> tasksType = [];
  List<dynamic> tasksTag = [];
  List<dynamic> tasksDueDate = [];
  List<dynamic> tasksNotes = [];
  Isar isar = MyIsar.isar;

  @override
  void onInit() async {
    List<PomoticaTasksOrder> tasks = TasksOrderCrud.tasksOrderGetAll(isar);
    for (var task in tasks) {
      if (task.type == "reward") continue;
      tasksOrder.add(task.text);
      tasksType.add(task.type);
      tasksDueDate.add(task.nextDue);
      tasksNotes.add(task.notes);
      update();
    }

    PomoticaUserModel userModel = UserDataService().retriveUserData();

    update();
    super.onInit();
  }
}
