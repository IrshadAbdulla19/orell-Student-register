// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:student_register/application/bussiness_logic/Navigations/navigations_bloc.dart'
    as _i6;
import 'package:student_register/application/bussiness_logic/Register/register_bloc.dart'
    as _i7;
import 'package:student_register/application/use_cases/navigations.dart' as _i5;
import 'package:student_register/domain/register/i_register_repo.dart' as _i3;
import 'package:student_register/infrastructure/register_repository/register_repo.dart'
    as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IRegisterRepo>(() => _i4.RegisterRepo());
    gh.lazySingleton<_i5.Navigations>(() => _i5.Navigations());
    gh.factory<_i6.NavigationsBloc>(
        () => _i6.NavigationsBloc(gh<_i5.Navigations>()));
    gh.factory<_i7.RegisterBloc>(
        () => _i7.RegisterBloc(gh<_i3.IRegisterRepo>()));
    return this;
  }
}
