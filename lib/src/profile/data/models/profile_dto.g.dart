// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) => ProfileDto(
      id: json['id'] as int?,
      code: json['code'] as String?,
      firstName: json['first_name'] as String?,
      secondName: json['second_name'] as String?,
      lastName: json['last_name'] as String?,
      nationalId: json['national_id'] as String?,
      dateBirth: json['date_birth'] as String?,
      dateOfCommencement: json['date_of_commencement'] as String?,
      educationLevel: json['education_level'] == null
          ? null
          : EducationLevel.fromJson(
              json['education_level'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      yearsOfExperience: json['years_of_experience'] as int?,
      religion: json['religion'] == null
          ? null
          : Religion.fromJson(json['religion'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      nationality: json['nationality'] == null
          ? null
          : Nationality.fromJson(json['nationality'] as Map<String, dynamic>),
      job: json['job'] == null
          ? null
          : Job.fromJson(json['job'] as Map<String, dynamic>),
      gender: json['gender'] as String?,
      maritalStatus: json['marital_status'] as String?,
      salaryCategory: json['salaryCategory'] == null
          ? null
          : SalaryCategory.fromJson(
              json['salaryCategory'] as Map<String, dynamic>),
      dateDocumentItInQawwa: json['date_document_it_in_qawwa'] as String?,
      childrenCount: json['children_count'] as int?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$ProfileDtoToJson(ProfileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'first_name': instance.firstName,
      'second_name': instance.secondName,
      'last_name': instance.lastName,
      'national_id': instance.nationalId,
      'date_birth': instance.dateBirth,
      'date_of_commencement': instance.dateOfCommencement,
      'education_level': instance.educationLevel,
      'phone': instance.phone,
      'address': instance.address,
      'years_of_experience': instance.yearsOfExperience,
      'religion': instance.religion,
      'city': instance.city,
      'nationality': instance.nationality,
      'job': instance.job,
      'gender': instance.gender,
      'marital_status': instance.maritalStatus,
      'salaryCategory': instance.salaryCategory,
      'date_document_it_in_qawwa': instance.dateDocumentItInQawwa,
      'children_count': instance.childrenCount,
      'token': instance.token,
    };

EducationLevel _$EducationLevelFromJson(Map<String, dynamic> json) =>
    EducationLevel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$EducationLevelToJson(EducationLevel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Religion _$ReligionFromJson(Map<String, dynamic> json) => Religion(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ReligionToJson(Religion instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Nationality _$NationalityFromJson(Map<String, dynamic> json) => Nationality(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$NationalityToJson(Nationality instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Job _$JobFromJson(Map<String, dynamic> json) => Job(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

SalaryCategory _$SalaryCategoryFromJson(Map<String, dynamic> json) =>
    SalaryCategory(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SalaryCategoryToJson(SalaryCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
