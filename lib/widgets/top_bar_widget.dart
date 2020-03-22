import 'package:flutter/material.dart';
import 'package:flutterwebresume/widgets/text_widget.dart';

class TopBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextWidget(
              text: 'Junaid Siddiqui',
              textSize: 30.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: <Widget>[
                FlatButton(
                    onPressed: () {},
                    child: TextWidget(
                      text: 'EXPERIENCE',
                      textSize: 13.0,
                      color: Color(0xff182153),
                    )),
                FlatButton(
                  onPressed: () {},
                  child: TextWidget(
                    text: 'EDUCATION',
                    textSize: 13.0,
                    color: Color(0xff182153),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: TextWidget(
                    text: 'SKILLS',
                    textSize: 13.0,
                    color: Color(0xff182153),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: TextWidget(
                    text: 'EXPERTISE',
                    textSize: 13.0,
                    color: Color(0xff182153),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: TextWidget(
                    text: 'CONTACT',
                    textSize: 13.0,
                    color: Color(0xff182153),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
