import 'package:student_register/domain/register/model/strudent_register_models.dart';
import 'package:dartz/dartz.dart';
import 'package:student_register/domain/student/student_model/student_model.dart';

abstract class IRegisterRepo {
  Future<Either<String, List<AccadamicYearModel>>> getAccdamicYear();
  Future<Either<String, List<ClassListModel>>> getClassList(
      String accadamicYrID);
  Future<bool> saveUser(StudentModel student);
}
