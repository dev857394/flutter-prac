import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  QuizCard(
      {super.key,
      required this.question,
      required this.options,
      required this.onCorrect,
      required this.onIncorrect,
      required this.answer});

  final String question;
  final List<String> options;
  final int answer;
  final Function onCorrect;
  final Function onIncorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              question,
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: options.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ElevatedButton(
                  onPressed: () {
                    if (index + 1 == answer) {
                      onCorrect();
                    } else {
                      onIncorrect();
                    }
                  },
                  child: Text(options[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
