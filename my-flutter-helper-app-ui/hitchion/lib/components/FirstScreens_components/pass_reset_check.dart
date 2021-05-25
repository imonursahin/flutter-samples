import 'package:flutter/material.dart';
import 'package:hitchion/constants.dart';

class PassResetCheck extends StatelessWidget {
  final bool reset;
  final Function press;
  const PassResetCheck({
    Key key,
    this.reset = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          reset ? "I forgot my password " : "",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            reset ? "Reset " : "",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
