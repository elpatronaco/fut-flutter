import 'package:flutter/material.dart';
import 'package:peliculas/src/models/player_model.dart';

class PlayerCard extends StatelessWidget {
  @override
  PlayerCard(this.data);

  final Player data;

  Widget build(BuildContext context) {
    final _widgetSize = MediaQuery.of(context).size;
    final double _cardHeight = _widgetSize.height.toDouble();
    final _cardWeight = _cardHeight * 0.6625;

    return Container(
      height: _cardHeight,
      width: _cardWeight,
      child: _stack(this.data, _cardHeight),
    );
  }
}

Stack _stack(Player data, final double initHeight) {
  final double _cardHeight = initHeight;
  final _firstRowHeight = _cardHeight * 0.51;
  final _secondRowHeight = _cardHeight * 0.045;
  final _thirdRowHeight = _cardHeight * 0.45;
  final _statsRow_Height = _thirdRowHeight * 0.5;
  final _margin1 = _cardHeight * 0.00;
  final _margin5 = _cardHeight * 0.0125;
  final _margin8 = _cardHeight * 0.02;
  final _margin10 = _cardHeight * 0.025;
  final _margin11 = _cardHeight * 0.0275;
  final _margin60 = _cardHeight * 0.16;
  final _margin64 = _cardHeight * 0.18;
  final _margin70 = _cardHeight * 0.21;
  final _fontSize20 = _cardHeight * 0.05;
  final _fontSize22 = _cardHeight * 0.055;
  final _fontSize24 = _cardHeight * 0.065;
  final _fontSize26 = _cardHeight * 0.08;
  final _flagDimension = _cardHeight * 0.0875;
  final _playerImageHeight = _cardHeight * 0.3375;

  const _fontColor = Color(0xff6E4011);
  final statsValueStyle = TextStyle(
      fontFamily: 'NFL',
      fontWeight: FontWeight.bold,
      fontSize: _fontSize22,
      color: _fontColor);
  final statsLabelStyle = TextStyle(
      fontFamily: 'NFL',
      fontWeight: FontWeight.normal,
      fontSize: _fontSize22,
      color: _fontColor);

  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/img/card_bg.png"))),
      ),
      Column(
        children: [
          Container(
            height: _firstRowHeight,
            padding: EdgeInsets.symmetric(horizontal: _margin10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: _margin70,
                      left: _margin10,
                      right: _margin10,
                      bottom: _margin10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(data.rating.toString(),
                          style: TextStyle(
                              fontFamily: 'NFL',
                              fontWeight: FontWeight.normal,
                              fontSize: _fontSize26,
                              color: _fontColor)),
                      Text(data.position.toString(),
                          style: TextStyle(
                              fontFamily: 'NFL',
                              fontWeight: FontWeight.normal,
                              fontSize: _fontSize22,
                              color: _fontColor)),
                      Image.asset("assets/img/barcelona.png",
                          alignment: Alignment.center,
                          fit: BoxFit.fill,
                          width: _flagDimension),
                      SizedBox(height: _margin5),
                      Image.asset("assets/img/barcelona.png",
                          alignment: Alignment.center,
                          fit: BoxFit.fill,
                          width: _flagDimension)
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(right: _margin10),
                      child: Image.asset(
                        "assets/img/messi.png",
                        height: _playerImageHeight,
                      )),
                )
              ],
            ),
          ),
          Container(
            height: _secondRowHeight,
            child: Container(
              margin: EdgeInsets.only(right: _margin11, left: _margin64),
              child: Padding(
                padding: EdgeInsets.all(_margin1),
                child: Center(
                    child: Text(
                  data.commonName.toString(),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(
                      fontFamily: 'NFL',
                      fontSize: _fontSize22,
                      fontWeight: FontWeight.normal,
                      color: _fontColor),
                )),
              ),
            ),
          ),
          Container(
            height: _thirdRowHeight,
            margin: EdgeInsets.only(right: _margin11, left: _margin64),
            padding: EdgeInsets.all(_margin8),
            alignment: Alignment.topCenter,
            child: Container(
              height: _statsRow_Height,
              child: Row(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(data.pace.toString(), style: statsValueStyle),
                          Text(data.shooting.toString(),
                              style: statsValueStyle),
                          Text(data.passing.toString(), style: statsValueStyle),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: _margin5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("RIT", style: statsLabelStyle),
                            Text("TIR", style: statsLabelStyle),
                            Text("PAS", style: statsLabelStyle),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: _margin10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(data.dribbling.toString(),
                                style: statsValueStyle),
                            Text(data.defending.toString(),
                                style: statsValueStyle),
                            Text(data.physicality.toString(),
                                style: statsValueStyle),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: _margin5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("REG", style: statsLabelStyle),
                            Text("DEF", style: statsLabelStyle),
                            Text("FIS", style: statsLabelStyle),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    ],
  );
}
