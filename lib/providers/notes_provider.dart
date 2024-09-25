import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotesProvider extends ChangeNotifier {
  List<Map> notes = [];

  void addNote(Map item) {
    notes.add(item);
    // saveDataToSharedPrefrences();
    notifyListeners();
  }

  void removeNote(Map item) {
    notes.remove(item);
    // saveDataToSharedPrefrences();
    notifyListeners();
  }

  void updateNote(int index, Map item) {
    notes[index] = item;
    // saveDataToSharedPrefrences();
    notifyListeners();
  }

  // Future<void> initSharedPrefrencesData() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   String? decodedData = preferences.getString("notes");

  //   if (decodedData != null) {
  //     notes = List<Map>.from(json.decode(decodedData));
  //   }
  // }

  // Future<void> saveDataToSharedPrefrences() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   String jsonData = json.encode(notes);
  //   preferences.setString("notes", jsonData);
  // }
}
