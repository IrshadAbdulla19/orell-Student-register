part of 'navigations_bloc.dart';

@freezed
class NavigationsState with _$NavigationsState {
  const factory NavigationsState(
      {required bool toReristerPage,
      required int currentFormInt}) = _NavigationsState;

  factory NavigationsState.inital() {
    return const NavigationsState(toReristerPage: false, currentFormInt: 0);
  }
}
