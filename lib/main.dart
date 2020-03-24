// SOLID
// S      SINGLE RESPONSABILITY
//  O     OPEN/CLOSE PRINCIPLE

import 'package:simperson/src/hungry.dart';
import 'package:simperson/src/notifier.dart';
import 'package:simperson/src/person.dart';
import 'package:simperson/src/speeder.dart';
import 'package:simperson/src/walker.dart';
import 'package:simperson/src/walker_like_young.dart';

void main() {
  // Arrange
  final hungry = Hungry(isHungry: false);
  final youngSpeeder = Speeder(maxSpeed: 10);
  Walker youngWalker = WalkerLikeYoung(speeder: youngSpeeder);
  Person youngPerson = Person(
    walker: youngWalker,
    hungry: hungry,
  );
  Notifier changeWalkerSpeedOnHungry =
      Notifier(youngPerson, hungry, (context, observable) {
    final person = (context as Person);
    if (person.hungry.isHungry) {
      person.walker.speeder.speed -= 5;
    } else {
      person.walker.speeder.speed += 5;
    }
  });
  youngPerson.observers.add(changeWalkerSpeedOnHungry);

  // Act
  youngPerson.walk();
  youngPerson.hungry.isHungry = true;
  youngPerson.walk();
  youngPerson.hungry.isHungry = false;
  youngPerson.walk();
}
