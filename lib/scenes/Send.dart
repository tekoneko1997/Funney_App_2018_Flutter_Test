import 'package:flutter/material.dart';
import  'package:keyboard_actions/keyboard_actions.dart';

class Send extends StatefulWidget {
  final String text;

  Send({
    this.text = "",
  });

  @override
  createState() => _Send();
}


FocusNode _nodeText1 = FocusNode();
FocusNode _nodeText2 = FocusNode();

class _Send extends State<Send> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:FormKeyboardActions(
        keyboardActionsPlatform: KeyboardActionsPlatform.IOS,
        keyboardBarColor: Colors.grey[200],
        nextFocus: true,
        actions: [
          KeyboardAction(
          focusNode: _nodeText1,
          ),
          KeyboardAction(
          focusNode: _nodeText2
          )
        ],
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 120.0),
            PrimaryColorOverride(
              color: Colors.orange[300],
              child: TextField(
                focusNode: _nodeText1,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                //controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: '送金金額',
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            PrimaryColorOverride(
              color: Colors.orange[300],
              child: TextField(
                focusNode: _nodeText2,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                //controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: '送り先 学籍番号',
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            ButtonTheme(
              minWidth: 200.0,
              height: 50.0,
              child: RaisedButton(
                child: Text(
                  "Send",
                  textAlign: TextAlign.center,
                   style: TextStyle(fontSize: 20, color: Colors.white)
                ),
                elevation: 8.0,
                color: Colors.orange[500],
                // shape: const BeveledRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(7.0)),
                // ),
                onPressed: () {
                  //Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrimaryColorOverride extends StatelessWidget {
  const PrimaryColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(primaryColor: color),
    );
  }
}
