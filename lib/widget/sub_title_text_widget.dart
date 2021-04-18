import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SubTitleTextWidget extends StatelessWidget {
  final String text;
  const SubTitleTextWidget({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        maxLines: 2, style: Theme.of(context).textTheme.bodyText2);
  }
}
