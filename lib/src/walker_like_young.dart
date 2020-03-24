import 'package:simperson/src/speeder.dart';
import 'package:simperson/src/walker.dart';

class WalkerLikeYoung extends Walker {
  WalkerLikeYoung({Speeder speeder}) {
    this.speeder = speeder ?? Speeder(maxSpeed: 10);
  }

  void walk() {
    print('Walking Great with a speed of ${speeder.speed}...');
  }
}
