import 'package:book_shop_bal/Learn/manage_state/data/model/user.dart';
import 'package:book_shop_bal/Learn/manage_state/domain/repository/r_user.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<User> fetchUserData() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate API call
    return const User(name: "John Doe", email: "john@example.com");
  }
}
