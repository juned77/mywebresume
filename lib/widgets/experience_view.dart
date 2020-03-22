import 'package:flutter/material.dart';
import 'package:flutterwebresume/widgets/text_widget.dart';

class ExperienceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TextWidget(
            text: 'EXPERIENCE',
            textSize: 18.0,
            padding: EdgeInsets.symmetric(vertical: 30.0),
          ),
        ],
      ),
    );
  }
}
