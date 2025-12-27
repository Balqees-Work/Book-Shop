part of '../../barrel_home.dart';

@injectable
class CaseGetBooksTopSearch {
  final RepositoryHome repository;

  CaseGetBooksTopSearch({required this.repository});

  Future<List<EntityBook>?> execute() async {
    return await repository.getBooksTopSearch;
  }
}
