import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;

import '../../Themes/myColors.dart';
import '../../Themes/myText.dart';

class HabiticaCard extends StatelessWidget {
  final String title;
  final String type;
  final String? tag;
  final String? notes;
  final DateTime? dueDate;

  const HabiticaCard(
      {Key? key, required this.title, required this.type, this.tag, this.notes, this.dueDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.all(Radius.circular(10)), 
          boxShadow: <BoxShadow>[
          new BoxShadow(  
            color: MyColors.backgroundColor,
            blurRadius: 0,
            offset: new Offset(0.0,5.0),
          ),
          ],
        ),
        child: ExpansionTile(
          // shape: const UnderlineInputBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(10)),
          //     borderSide: BorderSide(color: MyColors.backgroundColor, width: 10),
          //   ),
          backgroundColor: MyColors.backgroundColorLight,
          collapsedBackgroundColor: MyColors.backgroundColorLight,
          trailing: Container(
              padding: const EdgeInsets.all(4),
              constraints: const BoxConstraints(
                maxHeight: 50,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: MyColors.purple.withOpacity(0.3),
              ),
              child: MyText(type)),
          title: MarkdownBody(
            data: "## "+title.toString(),
            styleSheet: MarkdownStyleSheet(
              p: MyText.textThemePoppins(MyColors.primaryWhite, FontWeight.bold, 20)
            ),
            extensionSet: md.ExtensionSet(
              md.ExtensionSet.gitHubFlavored.blockSyntaxes,
              [
                md.EmojiSyntax(),
                ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
              ],
            ),
          ),
        ),
      ),
    );
  }
}
