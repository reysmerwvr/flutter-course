abstract class Animal { }

abstract class Mammal extends Animal { }

abstract class Bird extends Animal { }

abstract class Fish extends Animal { }

abstract class Flying {
  void fly() => print("I believe I can fly");
}

abstract class Walker {
  void walk() => print("I believe I can walk");
}

abstract class Swimmer {
  void swim() => print("I believe I can swim");
}

class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Flying, Walker {}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Flying, Walker {}

class Duck extends Bird with Flying, Walker, Swimmer {}

class Shark extends Fish with Swimmer {}

void main() {
  final duck = new Duck();
  duck.fly();

  final shark = new Shark();
  shark.fly();
}