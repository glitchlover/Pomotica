import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:iconsax/iconsax.dart';
import 'package:markdown/markdown.dart' as md;

import '../../../../../Themes/myColors.dart';
import '../../../../../Themes/myText.dart';
class HabiticaCard extends StatelessWidget {
  final String title;
  final String type;
  final String? tag;
  final String? notes;
  final DateTime? dueDate;

  const HabiticaCard(
      {Key? key,
      required this.title,
      required this.type,
      this.tag,
      this.notes,
      this.dueDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.5),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.all(Radius.circular(10)),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: MyColors.backgroundColor,
              blurRadius: 0,
              offset: new Offset(0.0, 5.0),
            ),
          ],
        ),
        child: ExpansionTile(
          backgroundColor: MyColors.backgroundColorLight,
          collapsedBackgroundColor: MyColors.backgroundColorLight,
          trailing: IconButton(onPressed: (){}, icon: Icon(Iconsax.play_circle)),
          title: Padding(
            padding: EdgeInsets.only(bottom: 8), 
            child: MarkdownTile(
              data: title, 
              fontWeight: FontWeight.w500,
              fontSize: 18,
              ).paint()
            ),
          subtitle: subTitle(),
          children: [MarkdownTile(data: notes != null ? notes! : "")],
          childrenPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          expandedAlignment: Alignment.centerLeft,
        ),
      ),
    );
  }

  Column subTitle() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColors.purple,
                  ),
                  child: MyText(type, fontSize: 10,).text()) ,
                  SizedBox(width: 5),
                tag != null
                    ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 65, 71, 74),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Iconsax.tag, size: 12),
                            SizedBox(width: 2),
                            MarkdownTile(data: tag!, fontSize: 12,).paint(),
                          ],
                        ),
                      )
                    : MarkdownTile(data: ""),
              ],
            ),
                SizedBox(height:2),
                dueDate != null
                        ? 
            Row(
              children: [
                Icon(Iconsax.clock, size: 12),
                SizedBox(width: 3),
                MarkdownTile(
                    data: dueDate!.day.toString().padLeft(2, "0") +
                            "-" +
                            dueDate!.month.toString().padLeft(2, "0") +
                            "-" +
                            dueDate!.year.toString().padLeft(2, "0")
                        ),
              ],
            ): MyText(""),
          ],
        );
  }
}

class MarkdownTile extends MarkdownBody {
  FontWeight? fontWeight = FontWeight.normal;
  Color? color = MyColors.primaryWhite;
  double? fontSize = 12;
  MarkdownTile(
      {Key? key,
      required String data,
      this.fontWeight,
      this.fontSize,
      this.color})
      : super(key: key, data: data, styleSheet: MarkdownStyleSheet(
        h2: TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize),
        p: TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize),
      ));

  paint() {
    return MarkdownBody(
      data: data,
      styleSheet: MarkdownStyleSheet(
        h2: MyText.textThemePoppins(color, fontWeight, fontSize),
        p: MyText.textThemePoppins(color, fontWeight, fontSize)
      ),
      extensionSet: md.ExtensionSet(
        md.ExtensionSet.gitHubFlavored.blockSyntaxes,
        [md.EmojiSyntax(), ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes],
      ),
    );
  }
}
