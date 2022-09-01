import 'package:flutter/material.dart';

class Account extends StatelessWidget{

  String email,password;
  Account({ this.email, this.password});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Information'),
      ),
      body: Column(
        children: [
          Text('Email: ${email}'),
          Text('Password: ${password}')
        ],
      ),
    );
  }
}