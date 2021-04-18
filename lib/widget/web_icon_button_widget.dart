import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WebIconButtonWidget extends StatelessWidget {
  final String text;
  final IconData data;
  const WebIconButtonWidget({
    Key key,
    this.text,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
        icon: FaIcon(data, color: Theme.of(context).accentColor),
      ),
      SizedBox(width: 4),
      TextButton(
        onPressed: () {},
        child: Text(text, style: Theme.of(context).textTheme.button),
      ),
    ]);
  }
}
