import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SmallTitleTextWidget extends StatelessWidget {
  final String text;
  const SmallTitleTextWidget({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        maxLines: 2,
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ));
  }
}
