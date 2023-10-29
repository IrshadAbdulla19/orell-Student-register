import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student_register/domain/register/i_register_repo.dart';
import 'package:student_register/domain/register/model/strudent_register_models.dart';
import 'package:student_register/domain/student/student_model/student_model.dart';
part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IRegisterRepo register;
  RegisterBloc(this.register) : super(RegisterState.inital()) {
    on<_GetAccdamicYear>((event, emit) async {
      emit(state.copyWith(isAccademicFetchSuccess: false));
      Either<String, List<AccadamicYearModel>> result =
          await register.getAccdamicYear();
      result.fold(
          (fail) => emit(state.copyWith(
              accdamicYearList: [],
              error: fail,
              isAccademicFetchSuccess: false)),
          (success) => emit(state.copyWith(
              accdamicYearList: success, isAccademicFetchSuccess: true)));
    });
    on<_GetClassList>((event, emit) async {
      emit(state.copyWith(isAccademicFetchSuccess: false));
      Either<String, List<ClassListModel>> result =
          await register.getClassList(event.accdemicYrId);
      result.fold(
          (fail) => emit(state.copyWith(
              accdamicYearList: [],
              error: fail,
              isClassListFetchSuccess: false)),
          (success) => emit(state.copyWith(
              classModelList: success, isClassListFetchSuccess: true)));
    });
    on<_SaveUser>((event, emit) async {
      emit(state.copyWith(isAccademicFetchSuccess: false));
      bool result = await register.saveUser(event.student);
      emit(state.copyWith(userSave: result));
      await Future.delayed(const Duration(seconds: 3));
      emit(state.copyWith(userSave: false));
    });
  }
}
