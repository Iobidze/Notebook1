import 'package:flutter/material.dart';
class ThemeColor extends StatefulWidget{
  @override
_ThemeColorState createState()=>_ThemeColorState();
}
class _ThemeColorState extends State<ThemeColor>{
  Color? _colorTheme = Colors.cyanAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:           Text("\nSet theme color\n",
          style: TextStyle(fontWeight: FontWeight.bold),),),
      body: Container(
      color: _colorTheme,
      child: Column(
        children: [

          RadioListTile(
              title: const Text("Amber"),
              value: Colors.amber,
              groupValue: _colorTheme,
              onChanged: (Color? value){
                setState(() {
                  _colorTheme=value;
                });
              }),
          RadioListTile(
              title: const Text("Yellow"),
              value: Colors.yellowAccent,
              groupValue: _colorTheme,
              onChanged: (Color? value){
                setState(() {
                  _colorTheme=value;
                });
              }),
          RadioListTile(
              title: const Text("Pink"),
              value: Colors.pink,
              groupValue: _colorTheme,
              onChanged: (Color? value){
                setState(() {
                  _colorTheme=value;
                });
              })

        ],
      ),),
    );
  }
}