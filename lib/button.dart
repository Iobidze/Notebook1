import 'package:flutter/material.dart';
class ButtonPosition extends StatefulWidget{
  @override
  _ButtonPositionState createState()=>_ButtonPositionState();
}
class _ButtonPositionState extends State<ButtonPosition>{
  FloatingActionButtonLocation?  _buttonLocation = FloatingActionButtonLocation.centerFloat;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Положение кнопки"),),
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      tooltip: "Add task",
      child: Icon(Co),
    ),

  );
  }

}