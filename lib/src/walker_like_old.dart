import 'package:simperson/src/speeder.dart';
import 'package:simperson/src/walker.dart';

class WalkerLikeOld extends Walker {
  WalkerLikeOld({Speeder speeder}) {
    this.speeder = speeder ?? Speeder(maxSpeed: 5);
  }

  void walk() {
    print('Walking like old with a speed of ${speeder.speed}...');
  }
}
