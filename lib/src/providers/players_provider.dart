
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:async';

import 'package:peliculas/src/models/actores_model.dart';
import 'package:peliculas/src/models/pelicula_model.dart';
import 'package:peliculas/src/models/player_model.dart';

class PlayersProvider {

  String _apikey = '16723ca0-91e1-4ab8-b93b-36ab6fde4723';
  String _url = 'https://futdb.app/api/';

  List<Player> _mainplayers = new List();



}