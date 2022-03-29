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

        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  
  @override
 _FirstScreenState createState() => _FirstScreenState();


  }

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
  _controller.dispose();
  super.dispose();
}

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: const Text('First Screen'),
        actions: <Widget>[
          IconButton( 
            icon: const Icon( 
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Write your name in here',
              labelText: 'Your Name',
             ),
           ),
           SizedBox(height: 20),
           ElevatedButton(onPressed: () {
             showDialog(context: context, builder: (context) {
               return AlertDialog(
                 content:  Text('Hello, ${_controller.text} '),
               );
             });
           }, child: Text('Submit'))
          ],
          ),
      )
    );
    }
}

