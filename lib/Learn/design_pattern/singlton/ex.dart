import 'package:flutter/material.dart';

class Car {
  Car._(); // constructor private

  static final Car instance = Car._();
}

void main() {
  Car car = Car.instance;
  debugPrint(car.toString());
}
