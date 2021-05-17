import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CustomText extends StatelessWidget {
  final String title;
  final TextStyle style;
  final int maxLines;
  CustomText({
    this.style,
    this.title,
    this.maxLines = 1,
  });
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      style: style,
      maxLines: maxLines,
    );
  }
}
