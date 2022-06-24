import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTagList extends StatelessWidget {
  const MyTagList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: Get.height - 200,
        width: Get.width - 200,
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => Text("data"),
            separatorBuilder: (context, index) => SizedBox(height:10),
            itemCount: 5),
      ),
    );
  }
}
