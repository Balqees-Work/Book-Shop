part of 'home_books_bloc.dart';

@immutable
sealed class HomeBooksState {}

final class HomeBooksInitial extends HomeBooksState {}

class GetHomeBooksState extends HomeBooksState {}
