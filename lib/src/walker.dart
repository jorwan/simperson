import 'package:simperson/src/iwalker.dart';
import 'package:simperson/src/speeder.dart';

abstract class Walker implements IWalker {
  Speeder speeder;

  void walk();
}
