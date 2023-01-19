import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm();

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
        controller: myController,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              if (int.tryParse(myController.text) is int) {
                return AlertDialog(
                  content: Text(ParsingClass(myController, text: '').toString()),
                );
              } else {
                return AlertDialog(
                  content: Text(myController.text * 2),
                );
              }
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}

class ParsingClass {
  var text2num;

  ParsingClass(TextEditingController myController, {required String text}) {
    text2num = text * 4;
  }
}
