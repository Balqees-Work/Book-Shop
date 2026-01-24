import 'package:bloc/bloc.dart';
import 'package:book_shop_bal/Learn/manage_state/data/model/user.dart';
import 'package:book_shop_bal/Learn/manage_state/domain/repository/r_user.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository repository;

  UserBloc(this.repository) : super(UserInitialize()) {
    // register then handle events
    on<LoadUserEvent>(loadUser);
  }

  Future<void> loadUser(LoadUserEvent event, Emitter<UserState> emit) async {
    // loading
    emit(UserLoading()); // event database
    try {
      // await
      final user = await repository.fetchUserData();
      // success
      emit(UserLoaded(user));
    } catch (e) {
      // error
      emit(UserError(e.toString(), User.empty()));
    }
  }
}
