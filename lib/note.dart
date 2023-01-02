import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notebook1/main.dart';
import 'registration.dart';
import 'notepad.dart';
import 'user.dart';

class Note extends ConsumerWidget {
  const Note({super.key});

  void update(Widget ref, String value) {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(stateNote);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book+'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              //
              onSubmitted: ((value) {
                ref.read(stateNote.notifier).updateHead(value);
              }),
              //
            ),
            Text(user.head),
            TextField(
              //
              onSubmitted: ((value) {
                ref.read(stateNote.notifier).updateBody(value);
              }),
              //
            ),
            Text(user.body),
          ],
        ),
      ),
    );
  }
}

// TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Book+'),
//         centerTitle: true,
//         backgroundColor: Colors.black54,
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             Text('Заголовок'),
//             TextField(),
//             Text('Подробности задачи'),
//             TextField(),
//           ],
//         ),
//       ),
//     );
//   }
// }
