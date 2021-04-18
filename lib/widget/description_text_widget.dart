import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DescriptionTextWidget extends StatelessWidget {
  final String text;
  const DescriptionTextWidget({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        maxLines: 3,
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(color: Colors.white.withOpacity(0.8), height: 2.0));
  }
}
