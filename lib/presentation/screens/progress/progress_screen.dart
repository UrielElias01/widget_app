import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Idicators'),
      ),
      body: const _Progressview(),
    );
  }
}

class _Progressview extends StatelessWidget {
  const _Progressview();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text('Circular Indicator'),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black45,
          ),
          SizedBox(
            height: 30,
          ),
          Text('Circular Progress Indicator controlled'),
          _ControlledProgressIdicator()
        ],
      ),
    );
  }
}

class _ControlledProgressIdicator extends StatelessWidget {
  const _ControlledProgressIdicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 100), (value) {
          return (value + 2) / 100; //0.0 - 1.0
        }),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 2,
                  backgroundColor: Colors.black12,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: LinearProgressIndicator(
                    value: progressValue,
                  ),
                )
              ],
            ),
          );
        });
  }
}
