import 'package:flutter/material.dart';

// class AccountScreen extends StatelessWidget {
//   const AccountScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('アカウント'),
//       ),
//       body: const Center(
//           child: Text('アカウント画面', style: TextStyle(fontSize: 32.0))),
//     );
//   }
// }
class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: Center(
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

  String _text = '';

  void _handleText(String e) {
    setState(() {
      _text = e;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Text(
              "$_text",
              style: TextStyle(
                  color: Colors.purpleAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500
              ),
            ),
            new TextField(
              enabled: true,
              // 入力数
              maxLength: 10,
              maxLengthEnforced: false,
              style: TextStyle(color: Colors.lightGreen),
              obscureText: false,
              maxLines:1 ,
              //パスワード
              onChanged: _handleText,
            ),
          ],
        )
    );
  }
}