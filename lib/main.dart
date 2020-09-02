import 'package:flutter/material.dart';
import 'dart:math';


void main() => runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice which creates random numbers'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int c1=1;
  int c2=1;
  void change(){
    setState(() {
      c1=Random().nextInt(6)+1;
      c2=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(

                onPressed: (){
                  change();
                },
                child: Image(
                  image: AssetImage('images/dice$c1.png'),
                ),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: (){
                  change();
                },
                child: Image(
                  image: AssetImage('images/dice$c2.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
