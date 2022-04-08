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
              child: SizedBox(
                height: value.tasksOrder.length * 70,
                child: ListView.separated(
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (builder, index) => ListTile(
                    hoverColor: MyColors.primaryColorLight,
                    trailing: Container(
                        constraints: BoxConstraints(
                          maxHeight: 50,
                        ),
                        child: MyText(value.tasksType[index].toString())),
                    title: MarkdownBody(
                      data: value.tasksOrder[index].toString(),
                      extensionSet: md.ExtensionSet(
                        md.ExtensionSet.gitHubFlavored.blockSyntaxes,
                        [
                          md.EmojiSyntax(),
                          ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
                        ],
                      ),
                    ),
                  ),
                  separatorBuilder: (builder, cotext) => Container(
                    color: MyColors.shadowColor,
                    height: 3,
                  ),
                  itemCount: value.tasksOrder.length,
                ),
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
