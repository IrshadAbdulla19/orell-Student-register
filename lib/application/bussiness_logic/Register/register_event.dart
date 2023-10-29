part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent() = _RegisterEvent;

  factory RegisterEvent.getAccdamicYear() = _GetAccdamicYear;
  factory RegisterEvent.getClassList(String accdemicYrId) = _GetClassList;
  factory RegisterEvent.saveUser(StudentModel student) = _SaveUser;
}
