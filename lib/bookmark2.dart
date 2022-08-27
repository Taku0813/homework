import 'package:flutter/material.dart';
import 'package:homework/bookmark2.dart';
import 'package:homework/bookmark3.dart';

class Bookmark2 extends StatelessWidget {
  const Bookmark2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmark2'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Next'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Bookmark3()),
            );
          },
        ),
      ),
    );
  }
}

