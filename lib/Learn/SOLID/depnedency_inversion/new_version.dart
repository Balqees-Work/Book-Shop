// 1. Abstraction (Interface/Abstract Class)

abstract class Logger {
  void log(String message);
}

// 2. Low-level module (Concrete implementation)
// Depends on the Logger abstraction (implements it)
class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print('LOG: $message ❌');
  }
}

// A new low-level module that also depends on the abstraction
class FileLogger implements Logger {
  @override
  void log(String message) {
    // In a real app, this would write to a file
    print('FILE LOG: $message');
  }
}

// 3. High-level module
// Depends on the Logger abstraction (takes it in the constructor)
class UserService {
  final Logger _logger; // Depends on the abstraction
  // final Logger _logger = ConsoleLogger(); // Depends on the abstraction

  // Dependency Injection: The concrete Logger is "injected" here
  const UserService(this._logger);

  void saveUser(String username) {
    // Logic to save user...
    _logger.log('User $username saved successfully.');
  }
}

void main() {
  // We decide which low-level module to use *outside* of UserService.

  // Use ConsoleLogger for development
  final consoleLogger = ConsoleLogger();
  final userServiceDev = UserService(consoleLogger);
  userServiceDev.saveUser('Bob');
  // Output: CONSOLE LOG: User Bob saved successfully.

  // Use FileLogger for production
  final fileLogger = FileLogger();
  final userServiceProd = UserService(fileLogger);
  userServiceProd.saveUser('Charlie');
  // Output: FILE LOG: User Charlie saved successfully.
}
