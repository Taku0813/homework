import 'package:flutter/material.dart';

void main() => runApp(MyApp()); /*1*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Throw The Dice',
      home: Scaffold(/*5*/
        appBar: AppBar(/*6*/
          title: Text('Throw The Dice'),
          backgroundColor: Colors.red,
        ),
        body: Center(/*7*/
          child: ChangeForm(),
        ),
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  int _count = 3;
  void _handlePressed() {
    setState(() {
      var list = [1, 2, 3, 4, 5, 6];
      for(var $_count in list);
      // _count++;
    });
  }


  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Text(
              "$_count",
              style: TextStyle(
                  color:Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500
              ),
            ),
            FlatButton(
              onPressed: _handlePressed,
              color: Colors.red,
              child: Text(
                'PUSH!',
                style: TextStyle(
                    color:Colors.white,
                    fontSize: 20.0
                ),
              ),
            )
          ],
        )
    );
  }
}