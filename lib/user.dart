import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:riverpod/riverpod.dart';

import 'main.dart';
import 'note.dart';
import 'notepad.dart';

@immutable
class classNote {
  final String head;
  final String body;
  classNote({
    required this.head,
    required this.body,
  });

  classNote copyWith({
    String? head,
    String? body,
  }) {
    return classNote(
      head: head ?? this.head,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'head': head,
      'body': body,
    };
  }

  factory classNote.fromMap(Map<String, dynamic> map) {
    return classNote(
      head: map['head'] ?? '',
      body: map['body'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory classNote.fromJson(String source) =>
      classNote.fromMap(json.decode(source));

  @override
  String toString() => 'classNote(head: $head, body: $body)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is classNote && other.head == head && other.body == body;
  }

  @override
  int get hashCode => head.hashCode ^ body.hashCode;
}

class UpdateNote extends StateNotifier<classNote> {
  UpdateNote(super.state);

  void updateHead(String newHead) {
    state = state.copyWith(head: newHead);
  }

  void updateBody(String newBody) {
    state = state.copyWith(body: newBody);
  }
}
