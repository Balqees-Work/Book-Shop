part of 'user_bloc.dart';

@immutable
sealed class UserState {}

class UserInitialize extends UserState {}

final class UserLoading extends UserState {}

final class UserLoaded extends UserState {
  final User user;
  UserLoaded(this.user);
}

final class UserError extends UserState {
  final String message;
  UserError(this.message);
}
