import 'package:flutter/material.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _collector = prefs.getBool('ff_collector') ?? _collector;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _collector = true;
  bool get collector => _collector;
  set collector(bool value) {
    _collector = value;
    prefs.setBool('ff_collector', value);
  }

  List<String> _XbarLabel = ['Jan', 'Feb', 'Mar'];
  List<String> get XbarLabel => _XbarLabel;
  set XbarLabel(List<String> value) {
    _XbarLabel = value;
  }

  void addToXbarLabel(String value) {
    XbarLabel.add(value);
  }

  void removeFromXbarLabel(String value) {
    XbarLabel.remove(value);
  }

  void removeAtIndexFromXbarLabel(int index) {
    XbarLabel.removeAt(index);
  }

  void updateXbarLabelAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    XbarLabel[index] = updateFn(_XbarLabel[index]);
  }

  void insertAtIndexInXbarLabel(int index, String value) {
    XbarLabel.insert(index, value);
  }

  List<double> _yIncome = [50.0, 30.0, 40.0];
  List<double> get yIncome => _yIncome;
  set yIncome(List<double> value) {
    _yIncome = value;
  }

  void addToYIncome(double value) {
    yIncome.add(value);
  }

  void removeFromYIncome(double value) {
    yIncome.remove(value);
  }

  void removeAtIndexFromYIncome(int index) {
    yIncome.removeAt(index);
  }

  void updateYIncomeAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    yIncome[index] = updateFn(_yIncome[index]);
  }

  void insertAtIndexInYIncome(int index, double value) {
    yIncome.insert(index, value);
  }

  List<double> _yExpence = [30.0, 60.0, 10.0];
  List<double> get yExpence => _yExpence;
  set yExpence(List<double> value) {
    _yExpence = value;
  }

  void addToYExpence(double value) {
    yExpence.add(value);
  }

  void removeFromYExpence(double value) {
    yExpence.remove(value);
  }

  void removeAtIndexFromYExpence(int index) {
    yExpence.removeAt(index);
  }

  void updateYExpenceAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    yExpence[index] = updateFn(_yExpence[index]);
  }

  void insertAtIndexInYExpence(int index, double value) {
    yExpence.insert(index, value);
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
  }

  String _address = '';
  String get address => _address;
  set address(String value) {
    _address = value;
  }

  LatLng? _latlng;
  LatLng? get latlng => _latlng;
  set latlng(LatLng? value) {
    _latlng = value;
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
