import 'package:employees_agenda/presentation/widgets/dashed_border.dart';
import 'package:flutter/material.dart';

class InformationLine extends StatelessWidget {
  const InformationLine({
    super.key,
    required this.data,
    required this.label,
  });

  final String data;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: DashedBorder(
        color: const Color(0xFFDFDFDF),
        strokeWidth: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Text(data),
          ],
        ),
      ),
    );
  }
}
