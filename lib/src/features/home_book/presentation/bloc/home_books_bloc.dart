import 'package:bloc/bloc.dart';
import 'package:book_shop_bal/src/features/home_book/domain/entity/books_entity.dart';
import 'package:book_shop_bal/src/features/home_book/domain/usecase/home_books_usecase.dart';
import 'package:meta/meta.dart';

part 'home_books_event.dart';
part 'home_books_state.dart';

class HomeBooksBloc extends Bloc<HomeBooksEvent, HomeBooksState> {
  final HomeBooksUseCase homeBooksUseCase;
  List<BooksEntity> books = [];

  HomeBooksBloc(this.homeBooksUseCase) : super(HomeBooksInitial()) {
    on<HomeBooksEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<GetHomeBooksEvent>((event, emit) {
      getHomeNews();
      emit.call(GetHomeBooksState());
    });
  }

  Future<void> getHomeNews() async {
    books = await homeBooksUseCase.execute();
  }
}
