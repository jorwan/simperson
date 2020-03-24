import 'observable.dart';
import 'observer.dart';

class Notifier implements Observer {
  Observable _observable;
  Observable get observable => _observable;
  set observable(value) => _observable = value;

  void Function(Object context, Observable observable) _callback;
  void Function(Object context, Observable observable) get callback =>
      _callback;
  set callback(value) => _callback = value;

  Object _context;
  Object get context => _context;
  set context(value) => _context = value;

  Notifier(Object context, Observable observable,
      void Function(Object context, Observable observable) callback) {
    this.context = context;
    this.observable = observable;
    this.observable.addObserver(this);
    this.callback = callback;
  }

  @override
  void update(Observable observable) {
    this.callback(this.context, observable);
  }
}
