import 'observable.dart';
import 'observer.dart';

class Hungry implements Observable {
  bool _isHungry;
  bool get isHungry => _isHungry;
  set isHungry(value) {
    _isHungry = value;
    notifyObservers();
  }

  List<Observer> _observers;
  List<Observer> get observers => _observers;
  set observers(value) => _observers = value;

  Hungry({bool isHungry}) {
    observers = List<Observer>();
    this.isHungry = isHungry ?? false;
  }

  @override
  void addObserver(Observer observer) {
    observers.add(observer);
  }

  @override
  void notifyObservers() {
    observers.forEach((observer) {
      observer.update(this);
    });
  }

  @override
  void removeObserver(Observer observer) {
    observers.remove(observer);
  }
}
