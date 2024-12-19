import 'dart:math';
import 'package:flutter/material.dart';

class CircularTimerPainter extends CustomPainter {
  CircularTimerPainter({
    required this.progress,
    required this.duration,
    this.textStyleTimer,
  });

  final double progress;
  final int duration;
  final TextStyle? textStyleTimer;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 50;

    // Disegna il cerchio di sfondo
    _drawBackgroundCircle(canvas, center, radius);

    // Disegna l'arco di progresso
    _drawProgressArc(canvas, center, radius);

    // Disegna la pallina in movimento
    _drawMovingBall(canvas, center, radius);

    // Disegna il testo al centro
    _drawCenterText(canvas, center);
  }

  void _drawBackgroundCircle(Canvas canvas, Offset center, double radius) {
    final paintBackground = Paint()
      ..color = Colors.grey[300]!
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, paintBackground);
  }

  void _drawProgressArc(Canvas canvas, Offset center, double radius) {
    final paintForeground = Paint()
      ..color = Colors.blue
      ..strokeWidth = 8.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final startAngle = - pi / 2;
    final sweepAngle = 2 * pi * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      paintForeground,
    );
  }

  void _drawMovingBall(Canvas canvas, Offset center, double radius) {
    final angle = -pi / 2 + 2 * pi * progress;
    final ballRadius = 10.0;

    final dx = center.dx + radius * cos(angle);
    final dy = center.dy + radius * sin(angle);

    final paintBall = Paint()..color = Colors.blue;

    canvas.drawCircle(Offset(dx, dy), ballRadius, paintBall);
  }

  void _drawCenterText(Canvas canvas, Offset center) {
    final remainingTime = (duration * (1 - progress)).round();
    final textSpan = TextSpan(
      text: '$remainingTime',
      style:
          textStyleTimer ?? const TextStyle(fontSize: 30, color: Colors.black),
    );

    final textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();

    final offset = Offset(
      center.dx - textPainter.width / 2,
      center.dy - textPainter.height / 2,
    );

    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CircularTimerPainter oldDelegate) {
    return oldDelegate.progress != progress || oldDelegate.duration != duration;
  }
}
