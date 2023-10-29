import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:student_register/domain/core/api_end_points.dart';
import 'package:student_register/domain/core/error/model/error_model.dart';
import 'package:student_register/domain/register/i_register_repo.dart';
import 'package:student_register/domain/register/model/strudent_register_models.dart';
import 'package:dio/dio.dart';
import 'package:student_register/domain/student/student_model/student_model.dart';

@LazySingleton(as: IRegisterRepo)
class RegisterRepo implements IRegisterRepo {
  final Dio dio = Dio();
  @override
  Future<Either<String, List<AccadamicYearModel>>> getAccdamicYear() async {
    try {
      final Response response = await dio.get(ApiEndPoints.getAccadamicYear);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<AccadamicYearModel> accdamicYear = [];
        var data = response.data;
        accdamicYear = (data as List).map((e) {
          return AccadamicYearModel.fromJson(e);
        }).toList();
        print(accdamicYear.length);
        return Right(accdamicYear);
      } else {
        var data = response.data;
        var errorData = ErrorModel.fromJson(data);
        var error = errorData.error;
        return Left(error);
      }
    } catch (e) {
      var error = "An Error Occur $e";
      print(error);
      return Left(error);
    }
  }

  @override
  Future<Either<String, List<ClassListModel>>> getClassList(
      String accadamicYrId) async {
    var passData = {"institutionId": 32, "academicYearId": accadamicYrId};
    try {
      final Response response = await dio.post(ApiEndPoints.getAllClassList,
          data: passData,
          options: Options(
              headers: {"Content-Type": "application/json; charset=utf-8"}));
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<ClassListModel> classModelList = [];
        var data = response.data;
        classModelList = (data as List).map((e) {
          return ClassListModel.fromJson(e);
        }).toList();
        print(classModelList);
        return Right(classModelList);
      } else {
        var data = response.data;
        var errorData = ErrorModel.fromJson(data);
        var error = errorData.error;
        return Left(error);
      }
    } on DioException catch (e) {
      var error = "An Error Occur ${e.response!.data}";
      print(error);
      return Left(error);
    }
  }

  @override
  Future<bool> saveUser(StudentModel student) async {
    var passData = student.toJson();
    try {
      final Response response = await dio.post(ApiEndPoints.saveUser,
          data: passData,
          options: Options(
              headers: {"Content-Type": "application/json; charset=utf-8"}));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      } else {
        var data = response.data;
        var errorData = ErrorModel.fromJson(data);
        var error = errorData.error;
        print(error);
        return false;
      }
    } on DioException catch (e) {
      var error = "An Error Occur ${e.response!.data}";
      print(error);
      return false;
    }
  }
}
