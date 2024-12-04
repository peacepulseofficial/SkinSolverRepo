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

//l
Future<String> invokeChatGPTImageAnalysis(
  String apiKey,
  String imageUrl, // Image URL to be analyzed
  String question, // The question you want to ask about the image
) async {
  // Prepare the data with the image URL and the question
  final data = {
    'model': 'gpt-4-turbo',
    'messages': [
      {
        'role': 'user',
        'content': [
          {
            'type': 'text',
            'text': question, // Question about the image
          },
          {
            'type': 'image_url',
            'image_url': {
              'url': imageUrl, // URL of the image
            }
          }
        ]
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
