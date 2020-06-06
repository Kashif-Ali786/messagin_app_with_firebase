import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({this.title, this.colour, @required this.onPress});
  final Color colour;
  final Function onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 20.0,
          height: 42.0,
          child: Text(title,style: kRoundedButtonTextStyle,),
        ),
      ),
    );
  }
}
