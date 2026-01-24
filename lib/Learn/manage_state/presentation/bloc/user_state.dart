part of 'user_bloc.dart';

@immutable
sealed class UserState {
  final User user;
  const UserState({required this.user});
}

class UserInitialize extends UserState {
  UserInitialize() : super(user: User.empty());
}

final class UserLoading extends UserState {
  UserLoading() : super(user: User.empty());
}

final class UserLoaded extends UserState {
  const UserLoaded(User user) : super(user: user);
}

final class UserError extends UserState {
  // final String message;
  // final User user;
  // UserError(this.message, this.user);
  const UserError(String message, User user) : super(user: user);
}
