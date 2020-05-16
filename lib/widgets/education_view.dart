import 'package:flutter/material.dart';
import 'package:flutterwebresume/widgets/text_widget.dart';

class EducationView extends StatelessWidget {
  final double experienceGap = 80.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TextWidget(
            text: 'EDUCATION',
            textSize: 18.0,
            padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
          ),
          Divider(
            color: Color(0xfff1f1f1),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextWidget(text: '2020-20231'),
                  TextWidget(text: 'Duration'),
                ],
              ),
              SizedBox(
                width: experienceGap,
              ),
              Column(
                children: <Widget>[
                  TextWidget(text: 'COMPANY NAME'),
                  TextWidget(text: 'Job Role'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextWidget(text: '2020-2023'),
                  TextWidget(text: 'Duration'),
                ],
              ),
              SizedBox(
                width: experienceGap,
              ),
              Column(
                children: <Widget>[
                  TextWidget(text: 'COMPANY NAME'),
                  TextWidget(text: 'Job Role'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextWidget(text: '2020-2023'),
                  TextWidget(text: 'Duration'),
                ],
              ),
              SizedBox(
                width: experienceGap,
              ),
              Column(
                children: <Widget>[
                  TextWidget(text: 'COMPANY NAME'),
                  TextWidget(text: 'Job Role'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Divider(
            color: Color(0xfff1f1f1),
          ),
        ],
      ),
    );
  }
}
