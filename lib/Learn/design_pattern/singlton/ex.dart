class Car {
  Car._(); // constructor private

  static final Car instance = Car._();
}

void main() {
  Car car = Car.instance;
}
