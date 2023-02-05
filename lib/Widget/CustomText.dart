import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;
  final double fontSize;
  final Color fontcolor;

  const CustomText(
      {Key key, this.text, this.padding, this.fontSize, this.fontcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: fontSize, color: fontcolor),
      ),
    );
  }
}
