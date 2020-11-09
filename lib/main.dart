import 'package:flutter/material.dart';

import 'package:peliculas/src/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FUT Viewer',
      initialRoute: '/',
      routes: {'/': (BuildContext context) => HomePage()},
    );
  }
}
