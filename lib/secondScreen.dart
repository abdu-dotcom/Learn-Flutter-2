import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondScreen extends StatelessWidget {
  final String message;
  secondScreen(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          OutlineButton(
            child: Text('Kembali'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      )),
    );
  }
}
