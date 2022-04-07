import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;

import '../../Themes/myColors.dart';
import '../../Themes/myText.dart';

class HabiticaCard extends StatelessWidget {
  final String title;
  final String type;
  final String? tag;

  const HabiticaCard(
      {Key? key, required this.title, required this.type, this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      hoverColor: MyColors.primaryColorLight,
      trailing: Container(
          constraints: BoxConstraints(
            maxHeight: 50,
          ),
          child: MyText(type)),
      title: MarkdownBody(
        data: title.toString(),
        extensionSet: md.ExtensionSet(
          md.ExtensionSet.gitHubFlavored.blockSyntaxes,
          [md.EmojiSyntax(), ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes],
        ),
      ),
    );
  }
}
