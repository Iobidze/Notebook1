import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notebook1/notepad.dart';
import 'registration.dart';
import 'user.dart';
import 'note.dart';

final stateNote = StateNotifierProvider<UpdateNote, classNote>(
    (ref) => UpdateNote(classNote(head: 'head', body: 'body')));

void main() {
  runApp(ProviderScope(child: Notebook()));
}

class Notebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Book+'),
          centerTitle: true,
        ),
        body: Registration(),
      ),
    );
  }
}
