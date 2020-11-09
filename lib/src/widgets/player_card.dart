import 'package:flutter/material.dart';
import 'package:peliculas/src/models/player_model.dart';

const _cardHeight = 600.0;
const _cardWeight = _cardHeight * 0.6625;
const _firstRowHeight = _cardHeight * 0.51;
const _secondRowHeight = _cardHeight * 0.045;
const _thirdRowHeight = _cardHeight * 0.45;
const _statsRow_Height = _thirdRowHeight * 0.5;
const _margin1 = _cardHeight * 0.00;
const _margin5 = _cardHeight * 0.0125;
const _margin8 = _cardHeight * 0.02;
const _margin10 = _cardHeight * 0.025;
const _margin11 = _cardHeight * 0.0275;
const _margin60 = _cardHeight * 0.16;
const _margin64 = _cardHeight * 0.18;
const _margin70 = _cardHeight * 0.21;
const _fontSize20 = _cardHeight * 0.05;
const _fontSize22 = _cardHeight * 0.055;
const _fontSize24 = _cardHeight * 0.065;
const _fontSize26 = _cardHeight * 0.08;
const _flagDimension = _cardHeight * 0.0875;
const _playerImageHeight = _cardHeight * 0.3375;

class PlayerCard extends StatelessWidget {
  //PlayerCard(@required this.data);
  @override
  PlayerCard();

  Player data = new Player(commonName: 'Cristiano', rating: 89);

  Widget build(BuildContext context) {
    return Container(
      height: _cardHeight,
      width: _cardWeight,
      child: _stack(this.data),
    );
  }
}

const statsValueStyle = TextStyle(
    fontFamily: 'NFL',
    fontWeight: FontWeight.bold,
    fontSize: _fontSize22,
    color: _fontColor);
const statsLabelStyle = TextStyle(
    fontFamily: 'NFL',
    fontWeight: FontWeight.normal,
    fontSize: _fontSize22,
    color: _fontColor);
const _fontColor = Color(0xff6E4011);

Stack _stack(Player data) {
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
            padding: const EdgeInsets.symmetric(horizontal: _margin11),
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
                      Text("ED",
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
                padding: const EdgeInsets.all(_margin1),
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
                          Text("99", style: statsValueStyle),
                          Text("99", style: statsValueStyle),
                          Text("99", style: statsValueStyle),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: _margin5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("PAC", style: statsLabelStyle),
                            Text("SHO", style: statsLabelStyle),
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
                            Text("99", style: statsValueStyle),
                            Text("99", style: statsValueStyle),
                            Text("10", style: statsValueStyle),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: _margin5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("DRI", style: statsLabelStyle),
                            Text("DEF", style: statsLabelStyle),
                            Text("PHY", style: statsLabelStyle),
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