class Speeder {
  int _maxSpeed;
  int get maxSpeed => _maxSpeed;
  set maxSpeed(value) => _maxSpeed = value > 0 ? value : 0;

  int _speed;
  int get speed => _speed;
  set speed(value) => _speed = value > 0 ? value : 0;

  Speeder({int maxSpeed, int speed}) {
    this.maxSpeed = maxSpeed ?? 0;
    this.speed = speed ?? this.maxSpeed ?? 0;
  }
}
