import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  createState() => _Home();
}

class _Home extends State<Home> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

    _printLatestValue() {
    print("Second text field: ${textController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: TextField(
          keyboardType:  TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(filled: true, labelText: 'Username'),
              onChanged: (text) {
                print("First text field: $text");
              },
        ),
      ),
      Expanded(
        child: TextField(
          controller: textController,
          decoration: InputDecoration(filled: true, labelText: 'Username')),
      ),
    ]);
  }
}

