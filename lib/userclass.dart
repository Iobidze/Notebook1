import 'dart:convert';

import 'package:riverpod/riverpod.dart';
import 'main.dart';

class User {
  final String name;
  final String soname;
  final int age;
  User({
    required this.name,
    required this.soname,
    required this.age,
  });

  User copyWith({
    String? name,
    String? soname,
    int? age,
  }) {
    return User(
      name: name ?? this.name,
      soname: soname ?? this.soname,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'soname': soname,
      'age': age,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? '',
      soname: map['soname'] ?? '',
      age: map['age']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(name: $name, soname: $soname, age: $age)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.name == name &&
        other.soname == soname &&
        other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ soname.hashCode ^ age.hashCode;
}

class UpdateUser extends StateNotifier<User> {
  UpdateUser(super.state);

  void updateName(String newName) {
    state = state.copyWith(name: newName);
  }

  void updateSoname(String newSoname) {
    state = state.copyWith(soname: newSoname);
  }

  void updateAge(int newAge) {
    state = state.copyWith(age: newAge);
  }
}
