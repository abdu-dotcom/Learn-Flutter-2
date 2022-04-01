import 'package:flutter/material.dart';
import 'package:project/Secondscreen.dart';

class firstScreen extends StatelessWidget {
  final String message = 'Hello from First Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => secondScreen(message)));
          },
        ),
      ),
    );
  }
}
