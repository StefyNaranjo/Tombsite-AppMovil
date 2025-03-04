import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
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

  List<LatLng> _coldPlace = [];
  List<LatLng> get coldPlace => _coldPlace;
  set coldPlace(List<LatLng> value) {
    _coldPlace = value;
  }

  void addToColdPlace(LatLng value) {
    coldPlace.add(value);
  }

  void removeFromColdPlace(LatLng value) {
    coldPlace.remove(value);
  }

  void removeAtIndexFromColdPlace(int index) {
    coldPlace.removeAt(index);
  }

  void updateColdPlaceAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    coldPlace[index] = updateFn(_coldPlace[index]);
  }

  void insertAtIndexInColdPlace(int index, LatLng value) {
    coldPlace.insert(index, value);
  }

  bool _buscar = false;
  bool get buscar => _buscar;
  set buscar(bool value) {
    _buscar = value;
  }
}
