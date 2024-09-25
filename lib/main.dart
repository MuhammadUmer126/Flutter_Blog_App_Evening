import 'package:flutter/material.dart';
import 'package:notes_app/providers/notes_provider.dart';
import 'package:notes_app/screens/show_notes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NotesProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        home: const ShowNotes(),
      ),
    ),
  );
}
