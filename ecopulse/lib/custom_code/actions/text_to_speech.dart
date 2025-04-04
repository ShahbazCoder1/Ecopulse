// Automatic FlutterFlow imports
import '../../flutter_sh/flutter_theme.dart';
import '../../flutter_sh/flutter_sh_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_tts/flutter_tts.dart';

Future<void> textToSpeech(String text) async {
  FlutterTts flutterTts = FlutterTts();
  await flutterTts.setLanguage("en-US");
  await flutterTts.setPitch(1.0);
  await flutterTts.speak(text);
}
