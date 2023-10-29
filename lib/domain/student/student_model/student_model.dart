import 'package:json_annotation/json_annotation.dart';

part 'student_model.g.dart';

@JsonSerializable()
class StudentModel {
	String? academicYearId;
	String? address;
	String? createdBy;
	String? emailId;
	int? institutionId;
	String? mobileNo;
	String? name;
	String? password;
	String? classId;
	int? userClassId;
	String? userCode;
	String? userId;
	String? userType;
	String? whatsappNo;

	StudentModel({
		this.academicYearId, 
		this.address, 
		this.createdBy, 
		this.emailId, 
		this.institutionId, 
		this.mobileNo, 
		this.name, 
		this.password, 
		this.classId, 
		this.userClassId, 
		this.userCode, 
		this.userId, 
		this.userType, 
		this.whatsappNo, 
	});

	factory StudentModel.fromJson(Map<String, dynamic> json) {
		return _$StudentModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$StudentModelToJson(this);
}
