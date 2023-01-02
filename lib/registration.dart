import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'main.dart';
import 'notepad.dart';

class Registration extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    return Center(
      child: Container(
        // color: Colors.red,
        width: 300,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Почта',
                )),
            const TextField(
              maxLines: 1,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Пароль',
              ),
            ),
            TextButton(
                onPressed: () {
                  //
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => MyHomePage()));
                  //
                },
                child: Text('Войти')),
            TextButton(
                onPressed: () {
                  //
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => MyHomePage()));
                  //
                },
                child: Text('Войти через Google')),
          ],
        ),
      ),
    );
  }
}
