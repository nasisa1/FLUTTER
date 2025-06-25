// a)
abstract class Vehicle {
  int _spd = 0;

  void move();

  void nSpd(int spd) {
    _spd = spd;
  }

  int gSpd() {
    return _spd;
  }
}

// b) ,c)
class Car extends Vehicle {
  @override
  void move() {
    print("The car is moving at ${gSpd()} km/h");
  }
}

// d)
void main() {
  Car myCar = Car();
  myCar.nSpd(80);
  myCar.move();
}
