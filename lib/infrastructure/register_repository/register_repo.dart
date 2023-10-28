import 'package:dartz/dartz.dart';
import 'package:student_register/domain/core/api_end_points.dart';
import 'package:student_register/domain/core/error/model/error_model.dart';
import 'package:student_register/domain/register/i_register_repo.dart';
import 'package:student_register/domain/register/model/strudent_register_models.dart';
import 'package:dio/dio.dart';

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
  Future<Either<String, List<ClassListModel>>> getClassList() {
    // TODO: implement getClassList
    throw UnimplementedError();
  }
}
