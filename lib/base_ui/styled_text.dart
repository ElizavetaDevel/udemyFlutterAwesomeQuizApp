import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.size, this.color,
      {super.key,
      this.fontWeight = FontWeight.normal,
      this.textAlign = TextAlign.center});

  final String text;
  final double size;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
          fontSize: size, color: color, fontWeight: fontWeight),
      textAlign: textAlign,
    );
  }
}
