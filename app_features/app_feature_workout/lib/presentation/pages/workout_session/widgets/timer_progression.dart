import 'dart:math';
import 'package:app_shared/widgets/molecules/picker/circular_timer_painter.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class CustomCircularTimer extends StatefulWidget {
  @override
  _CustomCircularTimerState createState() => _CustomCircularTimerState();
}

class _CustomCircularTimerState extends State<CustomCircularTimer> {
  double _progress = 0.0;
  late Timer _timer;
  double _dragProgress = 0.0; // To track the dragged progress
  bool _isDragging = false; // Flag to check if the user is dragging
  bool _isPaused = false; // Flag to check if the timer is paused
  int _elapsedTime = 0; // Track elapsed time in milliseconds

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const duration = Duration(milliseconds: 100);
    _timer = Timer.periodic(duration, (timer) {
      if (!_isPaused && !_isDragging) {
        setState(() {
          _elapsedTime += 100;
          _progress =
              (_elapsedTime / 50000).clamp(0.0, 1.0); // Tempo totale 5 secondi
          if (_progress == 1.0) {
            _timer.cancel();
          }
        });
      }
    });
  }

  void _pauseTimer() {
    setState(() {
      _isPaused = true;
    });
  }

  void _resumeTimer() {
    setState(() {
      _isPaused = false;
    });
  }

  void _resetTimer() {
    setState(() {
      _isPaused = false;
      _elapsedTime = 0;
      _progress = 0.0;
    });
    _timer.cancel();
    _startTimer();
  }

  void _onPanUpdate(DragUpdateDetails details, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final dx = details.localPosition.dx - center.dx;
    final dy = details.localPosition.dy - center.dy;
    final angle = (atan2(dy, dx) + pi / 2) % (2 * pi);
    final progress = (angle / (2 * pi)) % 1.0;

    setState(() {
      _dragProgress = progress;
      _progress = _dragProgress; // Update progress as the drag moves
      _elapsedTime =
          (progress * 50000).toInt(); // Update elapsed time based on drag
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onPanUpdate: (details) => _onPanUpdate(details, Size(150, 150)),
            onPanEnd: (_) {
              setState(() {
                _isDragging = false;
              });
            },
            onPanStart: (_) {
              setState(() {
                _isDragging = true;
              });
            },
            child: CustomPaint(
              size: Size(150, 150),
              painter: CircularTimerPainter(progress: _progress),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: _resetTimer,
              ),
              IconButton(
                icon: Icon(_isPaused ? Icons.play_arrow : Icons.pause),
                onPressed: _isPaused ? _resumeTimer : _pauseTimer,
              ),
            ],
          )
        ],
      ),
    );
  }
}
