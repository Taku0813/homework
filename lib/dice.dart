import 'package:flutter/material.dart';
import 'dart:math' as math;

class DiceScreen extends StatefulWidget {
  const DiceScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<DiceScreen> createState() => _DiceScreen();
}
class _DiceScreen extends State<DiceScreen> {
  var dice = ['1','2','3','4','5','6'];
  var random = math.Random();
  var result;

  void _shuffle() {
    setState(() {
      result = dice[random.nextInt(6)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("↓Push↓"),
            TextButton(
              onPressed: _shuffle,
              child: const Text('ここをタップ！',style: TextStyle(fontSize: 40.0),),
            ),
            Text(
                '$result',style: TextStyle(fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}

