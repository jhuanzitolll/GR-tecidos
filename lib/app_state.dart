import 'package:flutter/material.dart';
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
      _hostidWhats = prefs.getString('ff_hostidWhats') ?? _hostidWhats;
    });
    _safeInit(() {
      _tokenWhats = prefs.getString('ff_tokenWhats') ?? _tokenWhats;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _hostidWhats = '';
  String get hostidWhats => _hostidWhats;
  set hostidWhats(String value) {
    _hostidWhats = value;
    prefs.setString('ff_hostidWhats', value);
  }

  String _tokenWhats = '';
  String get tokenWhats => _tokenWhats;
  set tokenWhats(String value) {
    _tokenWhats = value;
    prefs.setString('ff_tokenWhats', value);
  }
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
