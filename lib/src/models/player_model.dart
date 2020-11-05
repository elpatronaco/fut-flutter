import 'package:http/http.dart' as http;

class Players {
  List<Player> items = new List();

  Players();

  Players.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final player = new Player.fromJsonMap(item);
      items.add(player);
    }
  }
}

class Player {
  int id;
  String firstName;
  String lastName;
  String commonName;
  dynamic age;
  int league;
  int nation;
  int club;
  int rarity;
  String position;
  int rating;
  int ratingAverage;
  int pace;
  int shooting;
  int passing;
  int dribbling;
  int defending;
  int physicality;

  Player.fromJsonMap(Map<String, int> json) {
    id = json['id'];
    firstName = json['firstName'].toString();
    lastName = json['lastName'].toString();
    commonName = json['commonName'].toString();
    age = json['age'];
    league = json['league'];
    nation = json['nation'];
    club = json['club'];
    rarity = json['rarity'];
    position = json['position'].toString();
    rating = json['rating'];
    ratingAverage = json['ratingAverage'];
    pace = json['pace'];
    shooting = json['shooting'];
    passing = json['passing'];
    dribbling = json['dribbling'];
    defending = json['defending'];
    physicality = json['physicality'];
  }

  Player(
      {this.id,
      this.firstName,
      this.lastName,
      this.commonName,
      this.age,
      this.league,
      this.nation,
      this.club,
      this.rarity,
      this.position,
      this.rating,
      this.ratingAverage,
      this.pace,
      this.shooting,
      this.passing,
      this.dribbling,
      this.defending,
      this.physicality});

  getImage() async {
    final response = await http.get(
        "https://futdb.app/api/players/${this.id}/image",
        headers: {"api_key": "16723ca0-91e1-4ab8-b93b-36ab6fde4723"});
    if (response.statusCode == 200) {
      return "https://futdb.app/api/players/${this.id}/image";
    } else {
      return "https://cdn2.iconfinder.com/data/icons/avatar-profile/449/avatar_user_default_contact_profile_male-512.png";
    }
  }
}
