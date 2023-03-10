import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notebook1/settings123.dart';
import 'registration.dart';
import 'note.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List note = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions:  <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: IconButton(icon: Icon(Icons.settings),
              onPressed:() {Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Settings()));}),
            ),
          )
        ],
        title: const Text('Book+'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black54,
        onPressed: () {
          //
          setState(() {
            note.add(getRow);
          });

          //
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: note.length,
                itemBuilder: (context, index) => getRow(index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {
            //
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => Note()));
            //
          },
          child: Container(
            width: 300,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '??????????????????',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
                Container(
                  height: 10,
                ),
                Text(
                  '???????? ????????????????????, ?? ?????????????? ?????????? ?????????? ????????????, ???????? ?????????? ?????????? ?????????? ?????????? ?????????? ?????????? ???????????? ',
                  maxLines: 3,
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
        TextButton(
            onPressed: (() {
              //
              setState(() {
                note.removeAt(index);
              });
              //
            }),
            child: const Icon(
              Icons.delete,
              color: Colors.black54,
            )),
      ],
    );
  }
}
