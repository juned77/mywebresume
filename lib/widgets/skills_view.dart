import 'package:flutter/material.dart';
import 'package:flutterwebresume/utils/constants.dart';
import 'package:flutterwebresume/widgets/text_widget.dart';
import 'package:parallax_image/parallax_image.dart';

class SkillsView extends StatefulWidget {
  final ScrollController controller;

  const SkillsView({Key key, this.controller}) : super(key: key);

  @override
  _SkillsViewState createState() => _SkillsViewState();
}

class _SkillsViewState extends State<SkillsView> {
  ScrollController controller;

  @override
  Widget build(BuildContext context) {
    controller = widget.controller;

    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 70,
          color: Color(darkBlueColor),
          child: TextWidget(
            text: 'SKILLS',
            textSize: 18.0,
            color: Colors.white,
          ),
        ),
        Container(
          height: 400.0,
          width: double.infinity,
          child: ParallaxImage(
            controller: controller,
            image: AssetImage('assets/images/banner.webp'),
            extent: 100.0,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                      color: Color.fromARGB(0xBF, 0x18, 0x21, 0x53),
                      child: TextWidget(
                        text: 'Android App Development',
                        color: Colors.white,
                        textSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                      color: Color.fromARGB(0xBF, 0x18, 0x21, 0x53),
                      child: TextWidget(
                        text: 'Flutter App Development',
                        color: Colors.white,
                        textSize: 16,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                      color: Color.fromARGB(0xBF, 0x18, 0x21, 0x53),
                      child: TextWidget(
                        text: 'Android App Development',
                        color: Colors.white,
                        textSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                      color: Color.fromARGB(0xBF, 0x18, 0x21, 0x53),
                      child: TextWidget(
                        text: 'Flutter App Development',
                        color: Colors.white,
                        textSize: 16,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                      color: Color.fromARGB(0xBF, 0x18, 0x21, 0x53),
                      child: TextWidget(
                        text: 'Android App Development',
                        color: Colors.white,
                        textSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                      color: Color.fromARGB(0xBF, 0x18, 0x21, 0x53),
                      child: TextWidget(
                        text: 'Flutter App Development',
                        color: Colors.white,
                        textSize: 16,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
