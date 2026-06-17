import 'package:flutter/material.dart';
import 'services/tts_service.dart';
import 'widgets/quiz_card.dart';

void main() {
  runApp(const PebloApp());
}

class PebloApp extends StatelessWidget {
  const PebloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StoryScreen(),
    );
  }
}

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  final TTSService tts = TTSService();

  bool showQuiz = false;

  final String story =
      "Once upon a time, a clever little robot named Pip lost his shiny blue gear in the Whispering Woods...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      appBar: AppBar(
        title: const Text("Peblo Story Buddy"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),

            const CircleAvatar(
              radius: 60,
              child: Icon(
                Icons.smart_toy,
                size: 60,
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    story,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () async {
                await tts.init();

                await tts.speak(
                  story,
                  onComplete: () {
                    setState(() {
                      showQuiz = true;
                    });
                  },
                );
              },
              child: const Text(
                "Read Me a Story",
              ),
            ),

            const SizedBox(height: 20),

            if (showQuiz)
              const Padding(
                padding: EdgeInsets.all(16),
                child: QuizCard(),
              ),
          ],
        ),
      ),
    );
  }
}