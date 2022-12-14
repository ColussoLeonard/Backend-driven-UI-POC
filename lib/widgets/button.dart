import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onTap;

  const Button({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        text,
        style: Theme.of(context).textTheme.button,
      ),
      onPressed: () => onTap(),
    );
  }
}