import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class WorkTimeCountdown extends StatefulWidget {
  const WorkTimeCountdown({super.key});

  @override
  State<WorkTimeCountdown> createState() => _WorkTimeCountdownState();
}

class _WorkTimeCountdownState extends State<WorkTimeCountdown> {
  static const maxSeconds = 5; // 1 hour countdown
  int _secondsRemaining = maxSeconds;
  Timer? _timer;
  AudioPlayer? _audioPlayer;

  @override
  void initState() {
    _audioPlayer = AudioPlayer();
    // _audioPlayer.setReleaseMode(ReleaseMode.stop);
    super.initState();
  }

  void _startTimer() {
    _timer?.cancel();
    _audioPlayer?.dispose();
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
        _audioPlayer?.play(AssetSource('sounds/beep1.mp3'), volume: 40);
      } else if (_secondsRemaining == 0) {
        _audioPlayer?.play(AssetSource('sounds/beep2.mp3'), volume: 70);
      }
    });
  }

  void _resetTimer() {
    _timer?.cancel();
    _audioPlayer?.dispose();
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
          const Text(
            'Time Remaining:',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            _formatTime(_secondsRemaining),
            style: const TextStyle(fontSize: 48),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _startTimer,
                child: const Text('Start Timer'),
              ),
              ElevatedButton(
                onPressed: _resetTimer,
                child: const Text('Reset Timer'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
