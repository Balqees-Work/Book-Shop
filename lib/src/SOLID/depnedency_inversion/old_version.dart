// ❌ Low-level module (concrete implementation)
class ConsoleLogger {
  void log(String message) {
    print('LOG: $message');
  }
}

// ❌ High-level module
// Depends directly on the concrete ConsoleLogger
class UserService {
  final ConsoleLogger _logger = ConsoleLogger(); // Direct dependency

  void saveUser(String username) {
    // Logic to save user...
    _logger.log('User $username saved successfully.');
  }
}

// Usage:
void main() {
  UserService userService = UserService();
  userService.saveUser('Alice');
}
