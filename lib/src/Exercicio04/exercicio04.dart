import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class MyProgressBar extends StatelessWidget {
  const MyProgressBar({super.key});
  static const appTitle = 'Progress Bar';
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Exercicio 04',
      home: ProgressBarMain(title: appTitle),
    );
  }
}

class ProgressBarMain extends StatelessWidget {
  const ProgressBarMain({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
          ],
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: const ProgressBar(),
    );
  }
}

class ProgressBar extends StatefulWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  int _progressValue = 0;
  String _message = 'Clique para iniciar o upload';
  Color _colorBar = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: ElevatedButton.icon(
                label: const Padding(
                  padding: EdgeInsets.fromLTRB(8, 15, 8, 15),
                  child: Text('Upload'),
                ),
                icon: const Icon(Icons.upload),
                onPressed: () {
                  _updateProgress();
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.0),
                    ),
                  ),
                ),
              ),
            ),
            Text(_message,
                style: TextStyle(fontSize: 18, color: Colors.grey.shade900)),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 14, 0, 14),
              child: LinearProgressIndicator(
                minHeight: 20,
                backgroundColor: Colors.yellow,
                valueColor: AlwaysStoppedAnimation<Color>(_colorBar),
                value: _progressValue / 100,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updateProgress() {
    var rng = Random();
    int tempNumber = _progressValue;

    if (_progressValue > 0 && _progressValue < 100) {
      while (tempNumber <= _progressValue) {
        tempNumber = rng.nextInt(100) + 1;
      }
    } else if (_progressValue == 100) {
      tempNumber = 100;
    } else if (_progressValue == 0) {
      tempNumber = rng.nextInt(100);
    }

    setState(() => {
          _progressValue = tempNumber,
          _message = _progressValue < 99 ? '$tempNumber%' : 'Upload completo!',
          _colorBar = _progressValue < 99 ? Colors.orange : Colors.green
        });
  }
}
