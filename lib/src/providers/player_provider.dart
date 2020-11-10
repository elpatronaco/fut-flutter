import 'package:http/http.dart' as http;
import 'package:peliculas/src/models/player_model.dart';
import 'package:peliculas/src/widgets/snackbar.dart';

import 'dart:convert';
import 'dart:async';

class PlayersProvider {
  String _apikey = '16723ca0-91e1-4ab8-b93b-36ab6fde4723';
  String _url = 'https://futdb.app/api/';
  int _page = 0;
  bool _loading = false;

  List<Player> _playersList = new List();

  final _playersStreamController = StreamController<List<Player>>.broadcast();

  Function(List<Player>) get playersSink => _playersStreamController.sink.add;

  void disposeStreams() {
    _playersStreamController?.close();
  }

  Future<List<Player>> _processResponse(Uri url) async {
    final resp = await http.get(url);
    final players = new Players.fromJsonList(json.decode(resp.body));
    return players.items;
  }

  Future<List<Player>> getAll() async {
    final url = Uri.https(
        _url, "players?page=${_page.toString()}", {'x-auth-token': _apikey});
    final resp = await _processResponse(url);
    _playersList.addAll(resp);
    _page++;
    return await _processResponse(url);
  }
}
