import 'package:flutter/material.dart';

class MeditationScreenPage extends StatelessWidget {
  const MeditationScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MeditationScreenPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MeditationScreenPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
