import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String extractString(
  String response,
  String sectionTitle,
) {
  // Find the start index of the section title
  final startIndex =
      response.indexOf('$sectionTitle: ') + sectionTitle.length + 2;

  // If the section title isn't found, return an empty string
  if (startIndex - sectionTitle.length - 2 == -1) {
    return '';
  }

  // Find the end of the numeric value by locating the next newline character
  final endIndex = response.indexOf('\n', startIndex);

  // Extract the substring between startIndex and endIndex
  String extracted = endIndex == -1
      ? response
          .substring(startIndex)
          .trim() // Take until the end if no newline
      : response.substring(startIndex, endIndex).trim();

  // Remove any non-numeric characters, ensuring only the number is returned
  final numericValue = RegExp(r'^\d+$').firstMatch(extracted)?.group(0);

  return numericValue ?? '';
}

List<dynamic> prepareChatHistory(
  List<dynamic> chatHistory,
  String newChat,
  String initialScript,
) {
  if (initialScript != "") {
    chatHistory.add({"role": "system", "content": initialScript});
  }

  chatHistory.add({"role": "user", "content": newChat.trim()});
  return chatHistory;
}

List<dynamic> refreshChatHistory(
  List<dynamic> chatHistory,
  dynamic chatResponse,
) {
  chatHistory.add(chatResponse);
  return chatHistory;
}

dynamic prepareSaveScanRating(
  String title,
  String image,
  String overallRating,
  String lipRating,
  String textureRating,
  String eyeBagsRating,
  String scarringRating,
  String potentialRating,
  String acneRating,
) {
  // Get the current date and time
  DateTime currentDateTime = DateTime.now();

  // Format the date as MM/dd/yyyy
  String formattedDate = DateFormat('MM/dd/yyyy').format(currentDateTime);

  // Prepare the scan result object
  dynamic savedScan = {
    "title": title,
    "image": image, // Add the image URL or path here
    "overall_rating": overallRating,
    "lip_rating": lipRating,
    "texture_rating": textureRating,
    "eye_bags_rating": eyeBagsRating,
    "acne_rating": acneRating,
    "scarring_rating": scarringRating,
    "potential_rating": potentialRating,
    "date": formattedDate, // Use the internally formatted date
  };

  return savedScan;
}

dynamic prepareSaveScan(
  String title,
  String image,
  String result,
  String riskAssessment,
  String diagnosis,
  String skinscore,
) {
  // Get the current date and time
  DateTime currentDateTime = DateTime.now();

  // Format the date as MM/dd/yyyy
  String formattedDate = DateFormat('MM/dd/yyyy').format(currentDateTime);

  // Prepare the scan result object
  dynamic savedScan = {
    "title": title,
    "image": image, // Add the image URL or path here
    "result": result,
    "risk_assessment": riskAssessment,
    "diagnosis": diagnosis,
    "date": formattedDate, // Add the formatted date here
    "skin_score": skinscore,
  };

  return savedScan;
}

double convertToDecimal(String numberString) {
  try {
    // Trim any whitespace from the input
    numberString = numberString.trim();

    // Parse the string as an integer, then divide by 100 to add the decimal
    return int.parse(numberString) / 100;
  } catch (e) {
    // Return the default value if there's a formatting error
    return 0.2;
  }
}

String colorBasedOnScore(String numberString) {
  // Convert the string to a decimal
  double score;
  try {
    // Trim and convert string to a double (as a fraction between 0 and 1)
    score = int.parse(numberString.trim()) / 100;
  } catch (e) {
    // Default to 0.2 if parsing fails
    score = 0.2;
  }

  // Define color phases (as RGB values)
  final colors = [
    Color(0xFF8B0000), // Dark Red (0%)
    Color(0xFFFF4500), // Red-Orange (25%)
    Color(0xFFFFEA00), // Yellow (50%)
    Color(0xFFA7FD00), // Light Green (75%)
    Color(0xFF008000), // Dark Green (100%)
  ];

  // Calculate which phase the score falls into
  double phase = score * (colors.length - 1);
  int startPhase = phase.floor(); // Index of the starting color
  int endPhase = startPhase + 1; // Index of the ending color

  // If the score is exactly 100%, use the final color
  if (endPhase >= colors.length) {
    return '#${colors.last.red.toRadixString(16).padLeft(2, '0').toUpperCase()}'
        '${colors.last.green.toRadixString(16).padLeft(2, '0').toUpperCase()}'
        '${colors.last.blue.toRadixString(16).padLeft(2, '0').toUpperCase()}';
  }

  // Calculate the interpolation factor within the current phase
  double factor =
      math.pow(phase - startPhase, 1.5).toDouble(); // Exaggerate transitions

  // Interpolate between the two colors
  int redValue =
      ((1 - factor) * colors[startPhase].red + factor * colors[endPhase].red)
          .toInt();
  int greenValue = ((1 - factor) * colors[startPhase].green +
          factor * colors[endPhase].green)
      .toInt();
  int blueValue =
      ((1 - factor) * colors[startPhase].blue + factor * colors[endPhase].blue)
          .toInt();

  // Convert the interpolated RGB values to a hex code
  return '#${redValue.toRadixString(16).padLeft(2, '0').toUpperCase()}'
      '${greenValue.toRadixString(16).padLeft(2, '0').toUpperCase()}'
      '${blueValue.toRadixString(16).padLeft(2, '0').toUpperCase()}';
}
