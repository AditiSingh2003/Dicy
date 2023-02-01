import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 4;

  @override
  Widget build(BuildContext context) {

  return Center(
    child: Row(
    children: <Widget>[
    Expanded(
      child:  Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
      onPressed: () {
        setState(() {
          leftDiceNumber = 5;
          print('object= $leftDiceNumber');
        });
            },
    child: Image.asset('images/dice$leftDiceNumber.png'),
      ),
      ),
    ),
    Expanded(
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            print('Right button got pressed. ');
            },
          child: Image.asset('images/dice1.png'),
          ),
        ),
      ),
      ],
    ),
    );
   }
  }


