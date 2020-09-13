import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/screens/DisplayAndEditNoteScreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstScreenState();
  }
}
class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return _getBody();
  }

  Widget _getBody() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notes'),
        ),
        body: _getListOfNotes(),
        floatingActionButton: FloatingActionButton(
          tooltip: 'add new note',
          child: Icon(Icons.add),
          onPressed: () {
            _navigateToAddNewNoteScreen();
          },
        ),
      ),
    );
  }

  Widget _getListOfNotes() {
    var list = [
      'My name is mubarack tahir i am a yoruba boy',
      'This is the name of my father '
    ];
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, position) {
          return Card(
            child: ListTile(
              leading: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.lightGreenAccent,
                  child: Icon(Icons.arrow_right),
                ),
              ),
              title: Text(list[position]),
              trailing: GestureDetector(
                child: Icon(Icons.delete),
                onTap: () {},
              ),
            ),
          );
        });
  }

  void _navigateToAddNewNoteScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DisplayAndEditNoteScreen()),
    );
  }
}
