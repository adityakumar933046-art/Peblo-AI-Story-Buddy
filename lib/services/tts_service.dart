import 'package:flutter_tts/flutter_tts.dart';

class TTSService {
  final FlutterTts tts = FlutterTts();

  Future<void> init() async {
    await tts.setLanguage("en-US");
    await tts.setSpeechRate(0.45);
  }

  Future<void> speak(
    String text, {
    Function()? onComplete,
  }) async {
    tts.setCompletionHandler(() {
      if (onComplete != null) {
        onComplete();
      }
    });

    await tts.speak(text);
  }
}