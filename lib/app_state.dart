// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _DiarioText = prefs.getStringList('ff_DiarioText') ?? _DiarioText;
    });
    _safeInit(() {
      _DiarioText2 = prefs.getStringList('ff_DiarioText2') ?? _DiarioText2;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _like = false;
  bool get like => _like;
  set like(bool value) {
    _like = value;
  }

  List<String> _DiarioText = [];
  List<String> get DiarioText => _DiarioText;
  set DiarioText(List<String> value) {
    _DiarioText = value;
    prefs.setStringList('ff_DiarioText', value);
  }

  void addToDiarioText(String value) {
    _DiarioText.add(value);
    prefs.setStringList('ff_DiarioText', _DiarioText);
  }

  void removeFromDiarioText(String value) {
    _DiarioText.remove(value);
    prefs.setStringList('ff_DiarioText', _DiarioText);
  }

  void removeAtIndexFromDiarioText(int index) {
    _DiarioText.removeAt(index);
    prefs.setStringList('ff_DiarioText', _DiarioText);
  }

  void updateDiarioTextAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _DiarioText[index] = updateFn(_DiarioText[index]);
    prefs.setStringList('ff_DiarioText', _DiarioText);
  }

  void insertAtIndexInDiarioText(int index, String value) {
    _DiarioText.insert(index, value);
    prefs.setStringList('ff_DiarioText', _DiarioText);
  }

  List<String> _DiarioText2 = [];
  List<String> get DiarioText2 => _DiarioText2;
  set DiarioText2(List<String> value) {
    _DiarioText2 = value;
    prefs.setStringList('ff_DiarioText2', value);
  }

  void addToDiarioText2(String value) {
    _DiarioText2.add(value);
    prefs.setStringList('ff_DiarioText2', _DiarioText2);
  }

  void removeFromDiarioText2(String value) {
    _DiarioText2.remove(value);
    prefs.setStringList('ff_DiarioText2', _DiarioText2);
  }

  void removeAtIndexFromDiarioText2(int index) {
    _DiarioText2.removeAt(index);
    prefs.setStringList('ff_DiarioText2', _DiarioText2);
  }

  void updateDiarioText2AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _DiarioText2[index] = updateFn(_DiarioText2[index]);
    prefs.setStringList('ff_DiarioText2', _DiarioText2);
  }

  void insertAtIndexInDiarioText2(int index, String value) {
    _DiarioText2.insert(index, value);
    prefs.setStringList('ff_DiarioText2', _DiarioText2);
  }

  List<String> _DiarioText3 = [];
  List<String> get DiarioText3 => _DiarioText3;
  set DiarioText3(List<String> value) {
    _DiarioText3 = value;
  }

  void addToDiarioText3(String value) {
    _DiarioText3.add(value);
  }

  void removeFromDiarioText3(String value) {
    _DiarioText3.remove(value);
  }

  void removeAtIndexFromDiarioText3(int index) {
    _DiarioText3.removeAt(index);
  }

  void updateDiarioText3AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _DiarioText3[index] = updateFn(_DiarioText3[index]);
  }

  void insertAtIndexInDiarioText3(int index, String value) {
    _DiarioText3.insert(index, value);
  }

  bool _showEvaluateApp = false;
  bool get showEvaluateApp => _showEvaluateApp;
  set showEvaluateApp(bool value) {
    _showEvaluateApp = value;
  }

  bool _audioBar = false;
  bool get audioBar => _audioBar;
  set audioBar(bool value) {
    _audioBar = value;
  }

  void showAudioBar() {
    _audioBar = true;
    notifyListeners();
  }

  void hideAudioBar() {
    _audioBar = false;
    notifyListeners();
  }

  String _currentAudioUrl = '';
  String get currentAudioUrl => _currentAudioUrl;
  set currentAudioUrl(String value) {
    _currentAudioUrl = value;
  }

  String _currentAudioTitle = '';
  String get currentAudioTitle => _currentAudioTitle;
  set currentAudioTitle(String value) {
    _currentAudioTitle = value;
  }

  // String _currentAudioType = '';
  // String get currentAudioType => _currentAudioType;
  // set currentAudioType(String value) {
  //   _currentAudioType = value;
  // }

  // Map<String, dynamic> _currentAudioRef = {};
  // Map<String, dynamic> get currentAudioRef => _currentAudioRef;
  // set currentAudioRef(Map<String, dynamic> value) {
  //   _currentAudioRef = value;
  // }

  final _allMeditaManager = StreamRequestManager<LessonsRecord>();
  Stream<LessonsRecord> allMedita({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<LessonsRecord> Function() requestFn,
  }) =>
      _allMeditaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAllMeditaCache() => _allMeditaManager.clear();
  void clearAllMeditaCacheKey(String? uniqueKey) =>
      _allMeditaManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
