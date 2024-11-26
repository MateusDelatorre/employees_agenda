import 'package:flutter/material.dart';

class ParagraphText extends StatelessWidget {
  const ParagraphText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
