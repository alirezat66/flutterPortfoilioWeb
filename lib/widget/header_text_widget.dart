import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  final String text;
  const HeaderTextWidget({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6.copyWith(
          color: Colors.white.withOpacity(0.6),
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0),
    );
  }
}
