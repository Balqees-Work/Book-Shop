import 'package:book_shop_bal/Learn/manage_state/data/model/user.dart';

abstract class UserRepository {
  Future<User> fetchUserData();
}
