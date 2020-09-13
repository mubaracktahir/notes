import 'package:flutter/material.dart';

import './screens/FirstScreen.dart';

/*
*
* entering point of a flutter Application
*
* */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: contentMain(),
      );

  Widget contentMain() => FirstScreen();
}
