import 'package:flutter/material.dart';

import 'button.dart';
import 'color.dart';
class Settings extends StatelessWidget{
  const Settings({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: const Text("Settings"),
          ),
        body: Container(
          child: Column(
            children: [
              Text("Смена языка"),
              TextButton(
                  onPressed: () {
                    //
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => ThemeColor()));
                    //
                  },
                  child: Text('Смена цвета')),
              TextButton(
                  onPressed: () {
                    //
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => ButtonPosition()));
                    //
                  },
                  child: Text('Положение кнопки')),
            ],
          ),
        ),
      );
  }}