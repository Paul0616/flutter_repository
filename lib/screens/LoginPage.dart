import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_repository/models/User.dart';
import 'package:flutter_repository/widgets/PillShapedButton.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controller = TextEditingController();
  var _isLoggedIn = false;
  Uint8List _photoBytes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoggedIn ? Container() : _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: ListView(
        children: <Widget>[
          Text(
            'Create a User',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff000000),
            ),
          ),
          TextField(
            controller: _controller,
            autofocus: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter a username (there is no password)',
              hintMaxLines: 1,
              hintStyle: TextStyle(
                fontSize: 16,
                color: Color(0xff9b9b9b),
              ),
            ),
          ),
          PillShapedButton(
            title: 'Create User',
            onPressed: () => _createUser(context),
          )
        ],
      ),
    );
  }

  void _createUser(BuildContext context) async {
    if (_photoBytes == null) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Please select a photo'),
            actions: <Widget>[
              FlatButton(
                child: Text('OK'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        },
      );
      return;
    }

    final user = User(name: _controller.text, id: _controller.text, photo: _photoBytes);
  }
}
