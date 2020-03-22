import 'package:flutter/material.dart';
import 'package:flutterwebresume/widgets/experience_view.dart';
import 'package:flutterwebresume/widgets/my_info_view.dart';
import 'package:flutterwebresume/widgets/top_bar_widget.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBarWidget(),
          Expanded(
            child: ListView(
              controller: _controller,
              children: <Widget>[
                MyInfoView(controller: _controller),
                ExperienceView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
