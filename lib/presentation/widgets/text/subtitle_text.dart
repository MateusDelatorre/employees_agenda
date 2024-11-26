import 'package:flutter/material.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    );
  }
}
