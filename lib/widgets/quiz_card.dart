import 'package:flutter/material.dart';
import '../models/quiz_data.dart';

class QuizCard extends StatefulWidget {
  const QuizCard({super.key});

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  String message = "";

  @override
  Widget build(BuildContext context) {
    final question = quizData["question"] as String;
    final options = quizData["options"] as List;
    final answer = quizData["answer"] as String;

    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              question,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ...options.map(
              (option) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (option == answer) {
                        message = "🎉 Correct Answer!";
                      } else {
                        message = "❌ Try Again";
                      }
                    });
                  },
                  child: Text(option.toString()),
                ),
              ),
            ),

            const SizedBox(height: 15),

            Text(
              message,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}