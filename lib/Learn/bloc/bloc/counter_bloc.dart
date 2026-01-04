import 'package:bloc/bloc.dart';
import 'package:book_shop_bal/Learn/SOLID/liskov_substitution/old_version.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
