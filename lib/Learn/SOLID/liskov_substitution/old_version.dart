// 🌳 Base Class: Rectangle

class Rectangle {
  double _width;
  double _height;

  Rectangle(this._width, this._height);

  double get width => _width;
  double get height => _height;

  // 🔑 EXPECTATION: The client expects to be able to set width and height independently.
  set setWidth(double w) {
    _width = w;
  }

  set setHeight(double h) {
    _height = h;
  }

  double get area => _width * _height;
}

// 🔲 Subtype: Square
// A Square is forced to override the setter methods in a way that
// violates the base class's contract.
class Square extends Rectangle {
  Square(double side) : super(side, side);
  // Square(super.side, super.side1);

  @override
  // 💥 VIOLATION 💥: When the client calls setWidth, they expect
  // only the width to change. This setter changes the height too,
  // breaking the substitution contract.
  set setWidth(double w) {
    super.setWidth = w;
    super.setHeight = w; // Violates LSP
  }

  @override
  // 💥 VIOLATION 💥: The client expects to set only the height.
  set setHeight(double h) {
    super.setWidth = h; // Violates LSP
    super.setHeight = h;
  }
}

// --- Client Code (The Test) ---
void calculateArea(Rectangle rect) {
  // Client expects: set width to 5, height to 10 -> Area should be 50.
  rect.setWidth = 5;
  rect.setHeight = 10;
  print('Expected Area: 50. Actual Area: ${rect.area}');
}

void main() {
  Rectangle rect = Rectangle(2, 3);
  print('--- Testing Rectangle (Base Type) ---');
  calculateArea(rect); // Output: Expected Area: 50. Actual Area: 50. (Correct)

  Rectangle square = Square(2);
  print('\n--- Testing Square (Subtype) ---');
  // ⚠️ When a Square is substituted where a Rectangle is expected:
  calculateArea(square);
  // Output: Expected Area: 50. Actual Area: 100. (INCORRECT!)
  // The program's correctness is broken by substituting the subtype.
}
