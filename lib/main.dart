import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: Notebook()));
}

// final String a = '10';

final ProvaiderName = Provider(
  (ref) {
    return 'asdasd';
  },
);

class Notebook extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(ProvaiderName);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(name),
        ),
      ),
    );
  }
}
