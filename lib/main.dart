import 'package:flutter/material.dart';
import 'package:project/firstScreen.dart';

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
      home: ResponsivePage(),
    );
  }
}

class ResponsivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return ListView(
              children: _generateContainers(constraints),
            );
          } else if (constraints.maxWidth < 900) {
            return GridView.count(
              crossAxisCount: 2,
              children: _generateContainers(constraints),
            );
          } else {
            return GridView.count(
              crossAxisCount: 6,
              children: _generateContainers(constraints),
            );
          }
        },
      ),
    );
  }
}

List<Widget> _generateContainers(BoxConstraints constraints) {
  return List<Widget>.generate(20, (index) {
    return Container(
      margin: const EdgeInsets.all(8),
      color: Colors.blueGrey,
      height: 200,
      child: Center(
        child: Text(
          constraints.maxWidth.toString(),
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    );
  });
}
