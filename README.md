# Peblo AI Story Buddy & Quiz Component

## Overview

This project is a Flutter implementation of Peblo's "AI Story Buddy & Quiz Component" challenge.

The application provides a child-friendly storytelling experience where an AI Buddy narrates a short story using Text-to-Speech (TTS). After the narration is completed, an interactive quiz is automatically revealed. The quiz is rendered dynamically from JSON data and provides feedback based on the child's answer.

---

## Features

### Story Narration

* Read Me a Story button
* Text-to-Speech narration using flutter_tts
* Smooth story playback experience

### Interactive Quiz

* Quiz generated from JSON data
* Supports dynamic option counts
* Automatic appearance after narration completes

### Feedback System

* Incorrect answer → Try Again message
* Correct answer → Success state

### Child-Friendly UI

* AI Buddy character
* Bright and simple interface
* Large buttons for easy interaction

---

## Technology Stack

### Framework

Flutter

### Language

Dart

### Packages Used

* flutter_tts
* provider
* confetti (planned for celebration effects)

---

## Why Flutter?

Flutter was selected because it allows development of Android and iOS applications from a single codebase while maintaining excellent UI performance.

Advantages:

* Fast development
* Cross-platform support
* Smooth animations
* Strong community support
* High-performance rendering

---

## Story Narration Flow

1. User opens the application.
2. User taps "Read Me a Story".
3. Flutter TTS starts narrating the story.
4. Application waits for narration completion.
5. Completion callback triggers.
6. Quiz section becomes visible.

This creates a natural transition from storytelling to assessment.

---

## Story Content

Once upon a time, a clever little robot named Pip lost his shiny blue gear in the Whispering Woods...

---

## Quiz Data

The quiz is rendered from a JSON object instead of hardcoded widgets.

Example:

```json
{
  "question": "What colour was Pip the Robot's lost gear?",
  "options": ["Red", "Green", "Blue", "Yellow"],
  "answer": "Blue"
}
```

---

## Data-Driven Quiz Design

The quiz renderer dynamically creates answer buttons using the options array.

Benefits:

* Supports 3 options
* Supports 4 options
* Supports 5 options
* No UI changes required when backend sends different questions

Only the JSON changes while the rendering logic remains the same.

---

## State Management

State is managed using Flutter Stateful Widgets.

Managed states include:

* Story playback state
* Quiz visibility state
* User answer state
* Success message state

For larger applications, Provider can be used for improved scalability.

---

## Audio Handling

### Loading

The application initializes TTS before narration begins.

### Playback

Narration is played through flutter_tts.

### Completion

A completion handler detects when narration ends and reveals the quiz.

### Error Handling

Future improvements include:

* Retry button
* Offline detection
* User-friendly error messages

---

## Caching Strategy

Current implementation uses native TTS and therefore does not require audio caching.

If remote audio services such as ElevenLabs are integrated:

* Generated audio files would be stored locally
* Repeated requests would use cached audio
* Network usage would be reduced
* Playback latency would improve

---

## Performance Considerations

The application was designed for mid-range Android devices.

Optimizations:

* Lightweight widget tree
* Minimal memory allocations
* Small package footprint
* Avoidance of unnecessary rebuilds
* Efficient rendering using Flutter widgets

---

## Device Target

Target Devices:

* Android smartphones
* 3GB RAM devices
* Entry-level and mid-range devices

The application is intentionally lightweight to ensure smooth performance.

---

## AI Usage

AI assistance was used for:

* Flutter architecture guidance
* README drafting
* Code review assistance

### Suggestion Rejected

One AI suggestion recommended placing all logic inside a single widget using extensive setState calls.

This approach was rejected because separating functionality into services and widgets improves maintainability and readability.

---

## Challenges Faced

### Challenge 1

Flutter environment setup and Android SDK configuration.

Solution:

* Installed Android Studio
* Configured Flutter SDK
* Enabled Developer Mode
* Installed required SDK components

### Challenge 2

Handling quiz appearance after narration completion.

Solution:

* Implemented TTS completion callback
* Triggered quiz visibility state change after narration finished

---

## Future Improvements

* Confetti celebration animation
* Animated AI Buddy reactions
* Multiple stories
* API integration
* User progress tracking
* Voice selection options
* Offline support

---

## Project Structure

lib/

├── main.dart

├── models/

│ └── quiz_data.dart

├── services/

│ └── tts_service.dart

├── widgets/

│ └── quiz_card.dart

└── providers/

│ └── app_provider.dart

---

## Demo Flow

1. Launch application
2. Tap Read Me a Story
3. Listen to narration
4. Quiz appears automatically
5. Select answer
6. Receive feedback
7. Complete quiz

---

## Author

Aditya Kumar

B.Tech Computer Science

Sitare University

GitHub: https://github.com/adityakumar933046-art


# peblo_story_buddy

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
