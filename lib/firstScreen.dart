import 'package:flutter/material.dart';
import 'package:project/secondScreen.dart';

class firstScreen extends StatelessWidget {
  final String message = 'Hello from First Screen';
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
        appBar: AppBar(
          title: Text('Media Query'),
        ),
        backgroundColor: Colors.blueGrey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Text(
                  'Screen width: ${screenSize.width.toStringAsFixed(2)}',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Orientation: $orientation',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return secondScreen();
                      }));
                    },
                    child: Text('Layout Builder'),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
