import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayAndEditNoteScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DisplayAndEditNoteScreenState();
  }
}

class _DisplayAndEditNoteScreenState extends State {
  TextEditingController describtion = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Add new Notes'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            controller: describtion,
            keyboardType: TextInputType.text,
            expands: true,
            maxLines: null,
            decoration: InputDecoration(
              labelText: 'Description',
              border: null,
            ),
          ),
        ),
      ),
    );
  }
}
