part of 'counter_bloc.dart';

@immutable
sealed class CounterState {
  final int value;
  const CounterState(this.value);
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(0);
}

class CounterLoadInProgress extends CounterState {
  // const CounterLoadInProgress(int value) : super(value);
  const CounterLoadInProgress(super.value);
}

class CounterLoadSuccess extends CounterState {
  const CounterLoadSuccess(super.value);
}

class CounterFailure extends CounterState {
  final String message;
  const CounterFailure(super.value, this.message);
}

@immutable
sealed class CounterState1 {}

class CounterValue extends CounterState1 {
  final int value;
  CounterValue(this.value);
}

class CounterInitial1 extends CounterState1 {}

class CounterLoadInProgress1 extends CounterState1 {}

class CounterLoadSuccess1 extends CounterState1 {}

class CounterFailure1 extends CounterState1 {
  final String message;
  CounterFailure1(this.message);
}




// void test(CounterState1 state) {
//     switch (state) {
//       case CounterInitial():
//         break;
//       case CounterValue():
//         break;
//     }
//   }