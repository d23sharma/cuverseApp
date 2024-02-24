import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  String _filterApartments = '';
  String get filterApartments => _filterApartments;
  set filterApartments(String _value) {
    _filterApartments = _value;
  }

  int _initialValue = 530000;
  int get initialValue => _initialValue;
  set initialValue(int _value) {
    _initialValue = _value;
  }

  int _finalValue = 1501000;
  int get finalValue => _finalValue;
  set finalValue(int _value) {
    _finalValue = _value;
  }

  String _internal1 = '';
  String get internal1 => _internal1;
  set internal1(String _value) {
    _internal1 = _value;
  }

  String _selectedButton = '';
  String get selectedButton => _selectedButton;
  set selectedButton(String _value) {
    _selectedButton = _value;
  }

  String _filePath = '';
  String get filePath => _filePath;
  set filePath(String _value) {
    _filePath = _value;
  }
}
