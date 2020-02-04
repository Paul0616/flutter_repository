import 'package:flutter/material.dart';

class PillShapedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  PillShapedButton({this.title, this.onPressed});
  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      color: Theme.of(context).primaryColor,
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
