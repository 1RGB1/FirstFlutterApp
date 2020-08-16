import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String buttonText;
  final Function selectHandler;

  Answer(this.buttonText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(buttonText),
        onPressed: selectHandler,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
