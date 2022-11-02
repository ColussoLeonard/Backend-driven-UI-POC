import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardMenu extends StatelessWidget {
  final String title;
  final String subTitle;
  final int iconPath;
  final String? onTap;
  final bool expandedVersion;
  final String? btnDescription;

  const CardMenu({Key? key, required this.title, required this.subTitle,
    required this.onTap, required this.expandedVersion, required this.iconPath,
    this.btnDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(expandedVersion){
      return buildCardExpanded();
    }
    return buildCard();
  }

  Card buildCardExpanded() {
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            ListTile(
              title: Text(title),
              subtitle: Text(subTitle),
              trailing: Icon(IconData(iconPath, fontFamily: 'MaterialIcons')),
              onTap: () {print(onTap.toString());},
            ),
            ButtonBar(
              children: [
                TextButton(
                  child: Text(btnDescription!),
                  onPressed: () {print(onTap.toString());},
                )
              ],
            )
          ],
        ));
  }

  Card buildCard() {
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            ListTile(
              title: Text(title),
              trailing: Icon(IconData(iconPath, fontFamily: 'MaterialIcons')),
              onTap: () {print(onTap.toString());},
            ),
          ],
        ));

  }
}
