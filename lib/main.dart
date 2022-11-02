import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:untitled/models/screen_config.dart';
import 'package:untitled/widgets/card_menu.dart';

import 'models/models.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Backend Driven UI POC",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        config: ScreenConfig(configParser(json.decode(POC_JSON_STRING_FROM_BACKEND))),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final ScreenConfig config;

  MyHomePage({Key? key, required this.config}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text("Backend Driven UI POC"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: buildWidget(widget.config.widget),
              )),
        );
  }


  Widget buildWidget(SingleWidget widget) {
    if (widget is ColumnWidget) {
      return Column(
        children: widget.children.map((e) => buildWidget(e)).toList(),
      );
    } else if (widget is RowWidget) {
      return Row(children: widget.children.map((e) => buildWidget(e)).toList());
    } else if (widget is TextWidget) {
      return Text(widget.textValue);
    } else if (widget is CardWidget) {
      return CardMenu(title: widget.title, subTitle: widget.subTitle, iconPath: widget.iconPath,
          expandedVersion: widget.expandedVersion, onTap: widget.onTap, btnDescription: widget.btnDescription);
    }
    return Container();
  }
}