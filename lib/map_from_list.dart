import 'dart_tutorial.dart';

void main() {

  var myships = [
    SpaceShip(captain: 'Mike'),
    SpaceShip(captain: 'Susan', fuel: 85.4),
    SpaceShip(captain: 'Marianne', fuel: 95.1),
    SpaceShip(captain: 'Paula')
  ];
  var myships2 = [
    SpaceShip(captain: 'Line'),
    SpaceShip(captain: 'Per', fuel: 25)
  ];
  Map<String, SpaceShip> captainSpaceShips = Map.fromIterable(myships,
      key: (item) => item.captain, value: (item) => item);
  Map<String, SpaceShip> captainSpaceShips2 = Map.fromIterable(myships2,
      key: (item) => item.captain, value: (item) => item);

  captainSpaceShips.addAll(captainSpaceShips2);
  var sortedMap = Map.fromEntries(captainSpaceShips.entries.toList()
      ..sort((e1,e2) => e1.key.compareTo(e2.key)));

  captainSpaceShips.removeWhere((k,v){
    return k.startsWith('M');
  });

  
  print('my ships: $sortedMap');
}
