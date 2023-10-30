import 'package:flutter/material.dart';

class RankWidget extends StatelessWidget {
  final int Rank;
  final String name;
  final int gochiScore;
  final int calScore;
  const RankWidget(this.Rank, this.name, this.gochiScore, this.calScore,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 300),
              Text(
                '$Rank,$name $gochiScore $calScore',
                style: TextStyle(
                  fontSize: 60,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 5
                    ..color = Colors.black,
                ),
              ),
            ],
          );
        });
  }
}
