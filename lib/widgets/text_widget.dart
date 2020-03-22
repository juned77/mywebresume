import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double textSize;
  final EdgeInsets padding;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  TextWidget(
      {@required this.text,
      this.textSize = 12,
      this.padding = const EdgeInsets.all(0.0),
      this.color = Colors.black,
      this.fontWeight = FontWeight.normal,
      this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Text(
        text,
        style:
            TextStyle(fontSize: textSize, color: color, fontWeight: fontWeight),
        textAlign: textAlign,
      ),
    );
  }
}
