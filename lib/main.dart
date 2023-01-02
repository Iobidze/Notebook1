import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'registration.dart';

void main() {
  runApp(ProviderScope(child: Notebook()));
}

final ProvaiderName = Provider(
  (ref) {
    return 'asdasd';
  },
);

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
