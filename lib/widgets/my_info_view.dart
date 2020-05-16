// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutterwebresume/utils/constants.dart';
import 'package:flutterwebresume/widgets/text_widget.dart';
import 'package:parallax_image/parallax_image.dart';

class MyInfoView extends StatelessWidget {
  final ScrollController controller;

  MyInfoView({@required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 600.0,
                width: double.infinity,
                child: ParallaxImage(
                  controller: controller,
                  image: AssetImage('assets/images/banner_0.webp'),
                  extent: 100.0,
                ),
              ),
              Positioned(
                bottom: 0.0,
                child: Container(
                  height: 450.0,
                  width: 1000.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Image.asset(
                            'assets/images/my_pic.jpg',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Color(0xffF1F1F1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              TextWidget(
                                text: 'Junaid siddiqui',
                                textSize: 30.0,
                                padding:
                                    EdgeInsets.fromLTRB(50.0, 50.0, 0.0, 0.0),
                                color: Color(0xff182153),
                              ),
                              TextWidget(
                                text: 'Software Engineer'.toUpperCase(),
                                textSize: 15.0,
                                padding: EdgeInsets.symmetric(horizontal: 50.0),
                                color: Color(0xff182153),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextWidget(
                                text: 'Phone:',
                                textSize: 15.0,
                                padding: EdgeInsets.symmetric(horizontal: 50.0),
                                color: Color(0xff182153),
                                fontWeight: FontWeight.bold,
                              ),
                              TextWidget(
                                text: '9529-238553',
                                textSize: 15.0,
                                padding: EdgeInsets.symmetric(horizontal: 50.0),
                                color: Color(0xff182153),
                                fontWeight: FontWeight.w100,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextWidget(
                                text: 'Email:',
                                textSize: 15.0,
                                padding: EdgeInsets.symmetric(horizontal: 50.0),
                                color: Color(0xff182153),
                                fontWeight: FontWeight.bold,
                              ),
                              TextWidget(
                                text: 'jndsddq14@gmail.com',
                                textSize: 15.0,
                                padding: EdgeInsets.symmetric(horizontal: 50.0),
                                color: Color(0xff182153),
                                fontWeight: FontWeight.w100,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextWidget(
                                text: 'Address:',
                                textSize: 15.0,
                                padding: EdgeInsets.symmetric(horizontal: 50.0),
                                color: Color(0xff182153),
                                fontWeight: FontWeight.bold,
                              ),
                              TextWidget(
                                text:
                                    '36, Ahmed nagar ,delhi bypass road,\nJaipur 302003',
                                textSize: 15.0,
                                padding: EdgeInsets.symmetric(horizontal: 50.0),
                                color: Color(0xff182153),
                                fontWeight: FontWeight.w100,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextWidget(
                                text: 'Date of Birth:',
                                textSize: 15.0,
                                padding: EdgeInsets.symmetric(horizontal: 50.0),
                                color: Color(0xff182153),
                                fontWeight: FontWeight.bold,
                              ),
                              TextWidget(
                                text: 'May 18th, 1994',
                                textSize: 15.0,
                                padding: EdgeInsets.symmetric(horizontal: 50.0),
                                color: Color(0xff182153),
                                fontWeight: FontWeight.w100,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 400.0,
          width: double.infinity,
          color: Color(0xffF1F1F1),
          child: Column(
            children: <Widget>[
              Container(
                width: 1000.0,
                height: 70.0,
                color: Color(darkBlueColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset('assets/icons/linkedin.webp'),
                      onPressed: () {
                        js.context.callMethod("open", [
                          "https://www.linkedin.com/in/juned-siddiqui-0b4a45a3/"
                        ]);
                      },
                      iconSize: 10.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    IconButton(
                      icon: Image.asset('assets/icons/facebook.webp'),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://www.facebook.com/juned.siddiqui.39/"]);
                      },
                      iconSize: 10.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    IconButton(
                      icon: Image.asset('assets/icons/instagram.webp'),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://www.instagram.com/sid_junaid77/"]);
                      },
                      iconSize: 10.0,
                    ),
                  ],
                ),
              ),
              TextWidget(
                text: 'Hello! I\'m Junaid',
                textSize: 30.0,
                color: Color(0xff182153),
                padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
              ),
              Container(
                width: 600.0,
                child: TextWidget(
                    textAlign: TextAlign.center,
                    textSize: 18.0,
                    text:
                        'Experienced mobile app developer who has a track record of success creating apps that are both well-received and commercially viable. Skilled with working as a team and incorporating input into projects. Ability to always look for ways to improve upon an already existing app to keep people downloading it and enjoying it. Strong eye for detail and tenacity to never quit on something until it is absolutely perfect.'),
              )
            ],
          ),
        )
      ],
    );
  }
}
