import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  bool show = false;

  void pressing() {
    setState(() {
      show = !show;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 5,
      children: List.generate(25, (index) {
        return Padding(
          padding: EdgeInsets.all(10),
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 40)),
            onPressed: pressing,
            child: show ? Text(index.toString()) : Text('0'),
          ),
        );
      }),
    ));
  }
}
