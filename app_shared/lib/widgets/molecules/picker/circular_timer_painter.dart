import 'dart:math';
import 'package:flutter/material.dart';

class CircularTimerPainter extends CustomPainter {
  // Durata totale in secondi
  CircularTimerPainter(
      {required this.progress, required this.duration, this.textStyleTimer});

  final double progress; // Valore di progresso (0.0 - 1.0)
  final int duration;
  final TextStyle? textStyleTimer;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // Disegna il cerchio di sfondo
    _drawBackgroundCircle(canvas, center, radius);

    // Disegna l'arco di progresso
    _drawProgressArc(canvas, center, radius);

    // Disegna la pallina in movimento
    _drawMovingBall(canvas, center, radius);

    // Disegna il testo centrale
    // _drawRemainingTimeText(canvas, size, center);
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

    final sweepAngle = 2 * pi * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2, // Angolo di partenza
      sweepAngle, // Angolo spazzato
      false,
      paintForeground,
    );
  }

  void _drawMovingBall(Canvas canvas, Offset center, double radius) {
    final paintBall = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final sweepAngle = 2 * pi * progress;
    final ballAngle = -pi / 2 + sweepAngle;

    final ballX = center.dx + radius * cos(ballAngle);
    final ballY = center.dy + radius * sin(ballAngle);

    canvas.drawCircle(Offset(ballX, ballY), 8.0, paintBall); // 8.0 è il raggio
  }

  // void _drawRemainingTimeText(Canvas canvas, Size size, Offset center) {
  //   final remainingTime =
  //       (duration * (1 - progress)).toInt(); // Calcolo del tempo residuo

  //   final text = TextSpan(
  //     text: remainingTime.toString(),
  //     style:
  //         textStyleTimer ?? const TextStyle(color: Colors.black, fontSize: 16),
  //   );

  //   final paintText = TextPainter(
  //     text: text,
  //     textAlign: TextAlign.center,
  //     textDirection: TextDirection.ltr,
  //   );

  //   final textS = TextSpan(
  //     text: 'sec',
  //     style: textStyleTimer?.copyWith(fontSize: 14) ??
  //         const TextStyle(color: Colors.black, fontSize: 16),
  //   );

  //   final paintTextS = TextPainter(
  //     text: textS,
  //     textAlign: TextAlign.center,
  //     textDirection: TextDirection.ltr,
  //   );

  //   paintText.layout(minWidth: 0, maxWidth: size.width);

  //   paintText.paint(
  //     canvas,
  //     Offset(center.dx - paintText.width / 2, center.dy - paintText.height / 2),
  //   );

  //   paintTextS.layout(minWidth: 0, maxWidth: size.width);

  //   paintTextS.paint(
  //     canvas,
  //     Offset(center.dx - paintText.width / 2,
  //         (center.dy - paintText.height / 2) + 30),
  //   );
  // }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
