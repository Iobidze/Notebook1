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
      child: Icon(Icons.add),),
    floatingActionButtonLocation: _buttonLocation,
    body: Container(
    child: Column(
      children: [
        RadioListTile(
            title: const Text("Центр"),
            value: FloatingActionButtonLocation.centerFloat,
            groupValue: _buttonLocation,
            onChanged: (FloatingActionButtonLocation? value){
              setState(() {
                _buttonLocation=value;
              });
            }),
        RadioListTile(
            title: const Text("Справо"),
            value: FloatingActionButtonLocation.endFloat,
            groupValue: _buttonLocation,
            onChanged: (FloatingActionButtonLocation? value){
              setState(() {
                _buttonLocation=value;
              });
            }),
        RadioListTile(
            title: const Text("Слево"),
            value: FloatingActionButtonLocation.startFloat,
            groupValue: _buttonLocation,
            onChanged: (FloatingActionButtonLocation? value){
              setState(() {
                _buttonLocation=value;
              });
            }),
      ],
    ),
    ) ,);

  }

}