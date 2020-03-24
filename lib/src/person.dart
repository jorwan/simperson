import 'package:simperson/src/hungry.dart';
import 'package:simperson/src/walker.dart';

import 'null_walker_exception.dart';
import 'observer.dart';

class Person {
  Walker _walker;
  Walker get walker => _walker;
  set walker(value) => _walker = value;

  Hungry _hungry;
  Hungry get hungry => _hungry;
  set hungry(value) => _hungry = value;

  List<Observer> _observers;
  List<Observer> get observers => _observers;
  set observers(value) => _observers = value;

  Person({
    Walker walker,
    Hungry hungry,
  }) {
    this.walker = walker;
    this.hungry = hungry ?? Hungry(isHungry: false);
    this.observers = List<Observer>();

    if (this.walker == null) throw NullWalkerException();
  }

  void walk() {
    walker.walk();
  }
}
