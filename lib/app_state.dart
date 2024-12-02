import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _AcneScanImage = '';
  String get AcneScanImage => _AcneScanImage;
  set AcneScanImage(String value) {
    _AcneScanImage = value;
  }

  List<dynamic> _currentConversation = [];
  List<dynamic> get currentConversation => _currentConversation;
  set currentConversation(List<dynamic> value) {
    _currentConversation = value;
  }

  void addToCurrentConversation(dynamic value) {
    currentConversation.add(value);
  }

  void removeFromCurrentConversation(dynamic value) {
    currentConversation.remove(value);
  }

  void removeAtIndexFromCurrentConversation(int index) {
    currentConversation.removeAt(index);
  }

  void updateCurrentConversationAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    currentConversation[index] = updateFn(_currentConversation[index]);
  }

  void insertAtIndexInCurrentConversation(int index, dynamic value) {
    currentConversation.insert(index, value);
  }

  String _initialScriptDermatologist =
      'Act as a dermatologist and help users gwith skin issues, be casual and short in responses and human like.';
  String get initialScriptDermatologist => _initialScriptDermatologist;
  set initialScriptDermatologist(String value) {
    _initialScriptDermatologist = value;
  }

  List<dynamic> _savedScans = [];
  List<dynamic> get savedScans => _savedScans;
  set savedScans(List<dynamic> value) {
    _savedScans = value;
  }

  void addToSavedScans(dynamic value) {
    savedScans.add(value);
  }

  void removeFromSavedScans(dynamic value) {
    savedScans.remove(value);
  }

  void removeAtIndexFromSavedScans(int index) {
    savedScans.removeAt(index);
  }

  void updateSavedScansAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    savedScans[index] = updateFn(_savedScans[index]);
  }

  void insertAtIndexInSavedScans(int index, dynamic value) {
    savedScans.insert(index, value);
  }

  bool _HasMadefirstAcnePlan = false;
  bool get HasMadefirstAcnePlan => _HasMadefirstAcnePlan;
  set HasMadefirstAcnePlan(bool value) {
    _HasMadefirstAcnePlan = value;
  }

  String _RoutineNumber = '';
  String get RoutineNumber => _RoutineNumber;
  set RoutineNumber(String value) {
    _RoutineNumber = value;
  }
}
