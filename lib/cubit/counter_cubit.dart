import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(TeamAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(TeamAIncrementState());
    } else if (team == 'B') {
      teamBPoints += buttonNumber;
      emit(TeamBIncrementState());
    } else {
      teamAPoints -= teamAPoints;
      teamBPoints -= teamBPoints;
      emit(TeamAIncrementState());
      emit(TeamBIncrementState());
    }
  }
}
