import 'package:flutter/material.dart';
import 'package:peliculas/src/providers/player_provider.dart';

import 'package:peliculas/src/widgets/player_card.dart';
import 'package:peliculas/src/widgets/card_swiper.dart';

class HomePage extends StatelessWidget {
  final playersProvider = new PlayersProvider();

  @override
  Widget build(BuildContext context) {
    playersProvider.getAll();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('FUT Viewer'),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[_swiperTarjetas()],
          ),
        ));
  }

  Widget _swiperTarjetas() {
    return FutureBuilder(
      future: playersProvider.getAll(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          return CardSwiper(snapshot.data);
        } else {
          return Container(child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
