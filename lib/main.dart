import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Oswald',
        primarySwatch: Colors.blue,
      ),
      home: Rainbow(),
    );
  }
}

class Rainbow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Color.fromARGB(137, 85, 85, 85),
          ),
        ),
        Expanded(
          child: Container(
            color: Color.fromARGB(255, 24, 116, 229),
          ),
        ),
        Expanded(
          child: Container(
            color: Color.fromARGB(255, 164, 150, 19),
          ),
        ),
        Expanded(
          child: Container(
            color: Color.fromARGB(255, 172, 164, 91),
          ),
        ),
      ],
    );
  }
}
