part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterIncrementalState extends CounterState {}

final class CounterResetState extends CounterState {}
