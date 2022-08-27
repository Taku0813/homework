import 'package:flutter/material.dart';
import 'package:homework/bookmark2.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お気に入り'),
      ),
      body: Center(
      child: RaisedButton(
    child: Text('Next'),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Bookmark2()),
    );
    },
    ),
    ),
    );
  }
}
