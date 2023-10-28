part of 'navigations_bloc.dart';

@freezed
class NavigationsEvent with _$NavigationsEvent {
  const factory NavigationsEvent() = _NavigationsEvent;

  factory NavigationsEvent.navToRegisterPage() = _NavToRegisterPage;

  factory NavigationsEvent.forFormNavigation(int index) = _ForFormNavigation;
}
