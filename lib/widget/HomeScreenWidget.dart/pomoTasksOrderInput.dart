import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/Themes/myText.dart';
import 'package:pomotica/database/tasksOrderCrud.dart';
import 'package:pomotica/model/habiticaTasksModel.dart';
import 'package:pomotica/model/pomoticaTasksOrderModel.dart';
import 'package:pomotica/services/userDataService.dart';
import 'package:pomotica/widget/HomeScreenWidget.dart/habiticaCard.dart';

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
                itemBuilder: (builder, index) => HabiticaCard(title: value.tasksOrder[index].toString(), type: value.tasksType[index].toString()),
                // separatorBuilder: (builder, i) => Column(
                //   children: [
                //     Container(
                //       height: 3,
                //       width:Get.width - 32,
                //       decoration: BoxDecoration(
                //         color: MyColors.shadowColor,
                //         borderRadius: BorderRadius.circular(15)
                //       ),
                //     ),
                  //   SizedBox(height: 10,)
                  // ],
                // ),
                itemCount: value.tasksOrder.length,
              ));
        });
  }
}

class PomoTasksOrderInputController extends GetxController {
  List<dynamic> tasksOrder = [];
  List<dynamic> tasksType = [];
  Isar isar = TasksOrderCrud.isar;

  @override
  void onInit() async {
    List<PomoticaTasksOrder> tasks =
        TasksOrderCrud.tasksOrderGetAll(isar);
    for (var task in tasks) {
      if (task.type == "reward") continue;
      this.tasksOrder.add(task.text);
      this.tasksType.add(task.type);
      update();
    }
    update();
    super.onInit();
  }
}
