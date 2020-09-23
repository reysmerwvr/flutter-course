import 'dart:convert';

void main() {

  final wolverine = new Heroe(name: "Logan", power: "Regeneration");

  print(wolverine);
  // print(wolverine.toString());

  final rawJson = '{ "name": "Cyclope", "power": "Super Eyes" }';
  Map parsedJson = json.decode(rawJson);
  // print(parsedJson);

  final cyclope = new Heroe.fromJson(parsedJson);
  print(cyclope);

  final square = new Square();
  square.side = 10;
  print(square);
  print("Area: ${square.area}");

  final dog = new Dog();

  dog.makeSound();

  final superman = new Villain();
  superman.name = "Clark";
  superman.power = "Fly";

  print(superman);

}

abstract class Character {
  String name;
  String power;
}

class Heroe {
  String name;
  String power;
  int courage;

  // Heroe({ String name = "Logan", String power }) {
  //   this.name = name;
  //   this.power = power;
  // }

  Heroe({ this.name, this.power });

  Heroe.fromJson(Map parsedJson ) {
    name = parsedJson['name'];
    power = parsedJson['power'];
  }

  @override
  String toString() => "name: ${this.name} - power: ${this.power}";

  // @override
  // String toString() {
  //   return "name: ${this.name} - power: ${this.power}";
  // }
}

class Villain extends Character {
  int evil;
}

class Square {
  // double _area;
  double _side;

  set side( double value ) {
    if ( value <= 0 ) {
      throw("Side can not be less than zero");
    }

    _side = value;
  }

  double get area => _side * _side;

  toString() => "Side: $_side";

}

abstract class Animal {
  int legs;

  void makeSound();
}

class Dog implements Animal {

  int legs;
  int color;

  void makeSound() => print("Bark");
}