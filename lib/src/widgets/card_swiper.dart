import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:peliculas/src/models/player_model.dart';
import 'package:peliculas/src/widgets/card_swiper.dart';
import 'package:peliculas/src/widgets/player_card.dart';

class CardSwiper extends StatelessWidget {
  final List<Player> players;

  CardSwiper(this.players);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: PlayerCard(players[index]),
          );
        },
        itemCount: players.length,
      ),
    );
  }
}
