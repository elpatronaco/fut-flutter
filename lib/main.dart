import 'package:flutter/material.dart';

import 'package:peliculas/src/pages/home.dart';
import 'package:peliculas/src/widgets/player_card.dart';
import 'package:peliculas/src/models/player_model.dart';

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

final Player testData = new Player(
    id: 14054,
    commonName: 'Ronaldo',
    rating: 89,
    firstName: 'Cristiano',
    lastName: 'Ronaldo',
    club: 112658,
    defending: 60,
    dribbling: 96,
    league: 2118,
    nation: 54,
    pace: 95,
    passing: 93,
    physicality: 76,
    position: 'CAM',
    rarity: 12,
    shooting: 96);
