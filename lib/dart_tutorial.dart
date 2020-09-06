
import 'dart:collection';

void main(){
  Map<String, SpaceShip> captainSpaceShips = {
    'Mike': SpaceShip(captain: 'Mike'),
    'Susan': SpaceShip(captain: 'Susan', fuel: 85.4),
    'Paula': SpaceShip(captain: 'Paula')
  };
  captainSpaceShips['Harriet'] = SpaceShip(captain: 'Harriet');

  captainSpaceShips.forEach((key, value) {
    value.launch();
  });


  // print("my map: $captainSpaceShips");
}

class SpaceShip {
  String captain;
  double fuel;
  String model;
  SpaceShip({this.captain='Mike', this.fuel=15.0, this.model='Round'});

  void launch(){
    print("Wroaaammmm ${toString()}");
  }

  String toString(){
    return 'captain $captain, fuel: $fuel, model: $model';
  }
}
