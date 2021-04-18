import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebButtonWidget extends StatelessWidget {
  final String text;

  const WebButtonWidget({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: AutoSizeText(
            text,
            style: Theme.of(context).textTheme.button,
            maxLines: 1,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.arrow_right,
                color: Theme.of(context).accentColor))
      ],
    );
  }
}
