import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text,
    this.size,
    this.color, {
    super.key,
  });

  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontSize: size, fontFamily: AutofillHints.addressState),
    );
  }
}
