import 'dart:async';

import 'package:flutter/material.dart';

class BreathScreen extends StatefulWidget {
  @override
  _BreathScreenState createState() => _BreathScreenState();
}

class _BreathScreenState extends State<BreathScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  Timer? _timer;
  Timer? _resetTimer;
  int _seconds = 0;
  int _repetitions = 2;
  String _selectedBreathingType = 'Breath';
  bool _isRunning = false;
  bool _wasRunning = false;

  @override
  void initState() {
    super.initState();
    _initAnimation();
  }

  void _initAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6), // Adjust duration as needed
    );
    _animation = Tween<double>(begin: 0.2, end: 1).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _animationController.forward();
        }
      });
  }

  void startBreathing() {
    setState(() {
      _isRunning = true;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
      });
      if (_seconds == 54) {
        _animationController.stop();
        _timer?.cancel();
        _resetTimer?.cancel();
        _showDialog();
      }
    });
    _animationController.forward();
  }

  void stopBreathing() {
    setState(() {
      _isRunning = false;
    });
    _animationController.stop();
    _timer?.cancel();
    _resetTimer?.cancel();
  }

  void reset() {
    setState(() {
      _seconds = 0;
      _isRunning = false;
      _repetitions = 0;
      if (_wasRunning) {
        _animationController.forward();
      }
    });
    _animationController.reset();
    _timer?.cancel();
    _resetTimer?.cancel();
    _animationController.duration = const Duration(seconds: 6);
    _wasRunning = _isRunning;
    _animationController.stop();
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Done'),
          content: const Text('You have completed 48 seconds'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                reset();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: _seconds < 54
                  ? const Duration(milliseconds: 1000)
                  : const Duration(milliseconds: 10000),
              height: _animation.value * 200,
              width: _animation.value * 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
            Text(
              '${_seconds} seconds',
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              _selectedBreathingType,
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: _isRunning ? null : startBreathing,
              child: const Text('Start'),
            ),
            ElevatedButton(
              onPressed: _isRunning ? stopBreathing : null,
              child: const Text('Stop'),
            ),
            ElevatedButton(
              onPressed: () {
                reset();
                _animationController.stop();
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
