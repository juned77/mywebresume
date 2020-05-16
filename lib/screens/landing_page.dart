import 'package:flutter/material.dart';
import 'package:flutterwebresume/utils/constants.dart';
import 'package:flutterwebresume/widgets/education_view.dart';
import 'package:flutterwebresume/widgets/experience_view.dart';
import 'package:flutterwebresume/widgets/my_info_view.dart';
import 'package:flutterwebresume/widgets/skills_view.dart';
import 'package:flutterwebresume/widgets/top_bar_widget.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print('\n${constraints.maxWidth}');
        if (constraints.maxWidth > iPadProWidth) {
          return getDesktopLayout();
        } else if ((constraints.maxWidth < iPadProWidth) &&
            (constraints.maxWidth > iPadWidth)) {
          return Text('ipad pro');
        } else if ((constraints.maxWidth < iPadWidth) &&
            (constraints.maxWidth > iPhone7Width)) {
          return Text('ipad');
        } else if ((constraints.maxWidth < iPhone7Width) &&
            (constraints.maxWidth < iPhone5SeWidth)) {
          return Text('iphone 7');
        } else {
          return Text('data');
        }
      },
    );
  }

  Widget getDesktopLayout() {
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
                EducationView(),
                SkillsView(controller: _controller)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
