part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState(
      {required bool isAccademicFetchSuccess,
      required bool isClassListFetchSuccess,
      List<AccadamicYearModel>? accdamicYearList,
      List<ClassListModel>? classModelList,
      required bool userSave,
      String? error}) = _RegisterState;

  factory RegisterState.inital() {
    return const RegisterState(
        isAccademicFetchSuccess: false,
        isClassListFetchSuccess: false,
        userSave: false);
  }
}
