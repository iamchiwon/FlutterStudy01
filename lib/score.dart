import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({
    super.key,
    required this.totalScore,
    required this.round,
  });

  final int totalScore;
  final int round;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          child: const Text('Start Orver'),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text('Score: '),
              Text('99999'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text('Round: '),
              Text('999'),
            ],
          ),
        ),
        TextButton(
          child: const Text('Info'),
          onPressed: () {},
        ),
      ],
    );
  }
}
