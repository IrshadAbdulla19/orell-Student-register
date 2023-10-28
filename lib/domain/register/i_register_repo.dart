import 'package:student_register/domain/register/model/strudent_register_models.dart';
import 'package:dartz/dartz.dart';

abstract class IRegisterRepo {
  Future<Either<String, List<AccadamicYearModel>>> getAccdamicYear();
  Future<Either<String, List<ClassListModel>>> getClassList();
}
