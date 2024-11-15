import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:clocktrain/presentation/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class WorkTimeCountdown extends StatefulWidget {
  const WorkTimeCountdown({super.key});

  @override
  State<WorkTimeCountdown> createState() => _WorkTimeCountdownState();
}

class _WorkTimeCountdownState extends State<WorkTimeCountdown> {
  static const maxSeconds = 5; // 5 seconds countdown for testing
  int _secondsRemaining = maxSeconds;
  Timer? _timer;
  AudioPlayer? _audioPlayer;

  @override
  void initState() {
    _audioPlayer = AudioPlayer();
    super.initState();
  }

  void _startTimer() {
    _timer?.cancel();
    _secondsRemaining = maxSeconds;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        timer.cancel();
      }
      if (_secondsRemaining <= 3 && _secondsRemaining > 0) {
        _audioPlayer?.play(AssetSource('sounds/beep1.mp3'), volume: 0.4);
      } else if (_secondsRemaining == 0) {
        _audioPlayer?.play(AssetSource('sounds/beep2.mp3'), volume: 0.7);
      }
    });
  }

  void _resetTimer() {
    _timer?.cancel();
    setState(() {
      _secondsRemaining = maxSeconds;
    });
  }

  String _formatTime(int seconds) {
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int secs = seconds % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer?.cancel();
    _audioPlayer?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Time Remaining:', style: context.textTheme.headlineLarge),
          Text(
            _formatTime(_secondsRemaining),
            style: context.textTheme.headlineLarge?.copyWith(
                color: context.colorScheme.primary), // Colore primario dell'app
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppElevatedButton(
                onPressed: _startTimer,
                text: 'Start Timer',
              ),
              AppElevatedButton(
                onPressed: _resetTimer,
                text: 'Reset Timer',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
