import 'package:flutter/material.dart';
import 'package:flutter_web_portfoilio/widget/sub_title_text_widget.dart';

import 'description_text_widget.dart';

class SkillObjectWidget extends StatelessWidget {
  final String title;
  final String skills;
  const SkillObjectWidget({
    Key key,
    this.title,
    this.skills,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).accentColor),
                ),
              ),
              SizedBox(width: 4),
              SubTitleTextWidget(text: title),
            ],
          ),
          DescriptionTextWidget(text: skills)
        ]);
  }
}
