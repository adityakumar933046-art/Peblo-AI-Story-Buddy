import 'package:flutter/material.dart';
import '../services/tts_service.dart';

class AppProvider extends ChangeNotifier {
  final TTSService tts = TTSService();

  bool isSpeaking = false;

  final String story =
      "Once upon a time, a clever little robot named Pip lost his shiny blue gear in the Whispering Woods...";

  Future<void> readStory() async {
    isSpeaking = true;
    notifyListeners();

    await tts.init();
    await tts.speak(story);

    isSpeaking = false;
    notifyListeners();
  }
}
