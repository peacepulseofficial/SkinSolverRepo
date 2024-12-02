// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<String> invokeChatGPTRoutineSelection(
  String apiKey,
  String skinType, // Skin type
  String acneType, // Acne type
  String prompt, // Custom prompt or question
) async {
  // Combine the prompt, acneType, and skinType into a single string message
  final fullPrompt = '''
    Skin Type: $skinType
    Acne Type: $acneType

    $prompt
  ''';

  // Prepare the data with the combined prompt for the GPT model
  final data = {
    'model': 'gpt-4-turbo',
    'messages': [
      {
        'role': 'user',
        'content': fullPrompt, // Pass the full prompt as a string
      }
    ],
    'max_tokens': 300,
  };

  // Set up the headers including the API key
  final headers = {
    'Authorization': 'Bearer $apiKey',
    'Content-Type': 'application/json',
  };

  // Create the POST request
  final request = http.Request(
    'POST',
    Uri.parse('https://api.openai.com/v1/chat/completions'),
  );
  request.body = json.encode(data);
  request.headers.addAll(headers);

  // Send the request and handle the response
  final httpResponse = await request.send();

  if (httpResponse.statusCode == 200) {
    final jsonResponse = json.decode(await httpResponse.stream.bytesToString());
    final messageContent = jsonResponse['choices'][0]['message']['content'];
    return messageContent.trim();
  } else {
    print(httpResponse.reasonPhrase);
    return 'Error: Could not retrieve a valid response';
  }
}
