import 'dart:math';

import 'package:flutter/material.dart';

class CircularTimerLabelsPainter extends CustomPainter {
  CircularTimerLabelsPainter({
    required this.duration,
    this.textStyle,
  });

  final int duration;
  final TextStyle? textStyle;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    final labelStyle = TextStyle(fontSize: 10, color: Colors.black);

    final textRadius =
        radius - 20; // Distanza dal centro per posizionare il testo

    // Etichetta a Nord (top)
    _drawTextAtPosition(
      canvas,
      center,
      textRadius,
      text: '${duration}s',
      angle: -pi / 2,
      textPainter: textPainter,
      style: labelStyle,
    );

    // Etichetta a Est (destra)
    _drawTextAtPosition(
      canvas,
      center,
      textRadius,
      text: '${(duration * 0.25).round()}s',
      angle: 0,
      textPainter: textPainter,
      style: labelStyle,
    );

    // Etichetta a Sud (bottom)
    _drawTextAtPosition(
      canvas,
      center,
      textRadius,
      text: '0s',
      angle: pi / 2,
      textPainter: textPainter,
      style: labelStyle,
    );

    // Etichetta a Ovest (sinistra)
    _drawTextAtPosition(
      canvas,
      center,
      textRadius,
      text: '${(duration * 0.75).round()}s',
      angle: pi,
      textPainter: textPainter,
      style: labelStyle,
    );
  }

  void _drawTextAtPosition(
    Canvas canvas,
    Offset center,
    double radius, {
    required String text,
    required double angle,
    required TextPainter textPainter,
    required TextStyle style,
  }) {
    final x = center.dx + radius * cos(angle);
    final y = center.dy + radius * sin(angle);

    textPainter.text = TextSpan(
      text: text,
      style: style.copyWith(color: Colors.black, fontSize: 14),
    );

    textPainter.layout(minWidth: 0, maxWidth: radius * 2);

    final offset = Offset(
      x - textPainter.width / 2,
      y - textPainter.height / 2,
    );

    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CircularTimerLabelsPainter oldDelegate) {
    return false;
  }
}
