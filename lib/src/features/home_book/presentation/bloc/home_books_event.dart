part of 'home_books_bloc.dart';

@immutable
sealed class HomeBooksEvent {}

class GetHomeBooksEvent extends HomeBooksEvent {}
