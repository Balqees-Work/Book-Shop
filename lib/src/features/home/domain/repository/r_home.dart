part of '../../barrel_home.dart';

abstract class RepositoryHome {
  // get books top search
  Future<List<EntityBook>> get getBooksTopSearch;
}
