import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterIncrementalState());
  int teamAPoints = 0;

  int teamBPoints = 0;

  void increment({required String team,required int pointsNumber}) {
    if (team == 'A') {
      teamAPoints += pointsNumber;
    } else {
      teamBPoints += pointsNumber;
    }
    emit(CounterIncrementalState());
  }
  void resetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }
}
