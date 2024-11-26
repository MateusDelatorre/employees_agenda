import 'package:flutter/material.dart';

/// This widget was generated using Microsoft Copilot.
/// Note there are some packages that do the same thing like dotted_border and mobkit_dashed_border.
/// There are also other free samples code on stackoverflow.
/// I chose this because was the first code I saw since I asked Copilot then I searched for this type of widget

class DashedBorder extends StatelessWidget {
  final Widget child;
  final Color color;
  final double strokeWidth;
  const DashedBorder({
    super.key,
    required this.child,
    this.color = Colors.black,
    this.strokeWidth = 1.0,
  });
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedBorderPainter(color: color, strokeWidth: strokeWidth),
      child: child,
    );
  }
}

class _DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  _DashedBorderPainter({required this.color, required this.strokeWidth});
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 4;
    double dashSpace = 3;
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, size.height),
          Offset(startX + dashWidth, size.height), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}