// 🔶 New Abstract Base: Shape (or simply Shape interface)
abstract class Shape {
  double area();
}

class Rectangle implements Shape {
  final double width;
  final double height;

  const Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

class Square implements Shape {
  final double side;

  const Square(this.side);

  @override
  double area() {
    return side * side;
  }
}

// --- Client Code (The Test) ---
// Now, the client code works with the common 'Shape' contract.
void printArea(Shape shape) {
  print('Area: ${shape.area()}');
}

void main() {
  Shape rect = Rectangle(5, 10);
  Shape square = Square(5);

  print('--- Testing Liskov-Compliant Design ---');

  // Both subtypes can be substituted for the base type 'Shape'
  // and the program's behavior remains correct.
  printArea(rect); // Output: Area: 50.0 (Correct)
  printArea(square); // Output: Area: 25.0 (Correct)
}
