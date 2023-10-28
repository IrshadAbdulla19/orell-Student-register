import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student_register/application/use_cases/navigations.dart';
part 'navigations_event.dart';
part 'navigations_state.dart';
part 'navigations_bloc.freezed.dart';

@injectable
class NavigationsBloc extends Bloc<NavigationsEvent, NavigationsState> {
  final Navigations nav;
  NavigationsBloc(this.nav) : super(NavigationsState.inital()) {
    on<_NavToRegisterPage>((event, emit) async {
      bool navToregister = await nav.toRegisterPage();
      emit(state.copyWith(toReristerPage: navToregister));
    });
    on<_ForFormNavigation>((event, emit) {
      int indexNow = nav.forFormNavigation(event.index);
      emit(state.copyWith(currentFormInt: indexNow));
    });
  }
}
