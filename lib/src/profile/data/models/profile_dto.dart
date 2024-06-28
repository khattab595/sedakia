import 'package:json_annotation/json_annotation.dart'; 

part 'profile_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ProfileDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'code')
  String? code;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'second_name')
  String? secondName;
  @JsonKey(name: 'last_name')
  String? lastName;
  @JsonKey(name: 'national_id')
  String? nationalId;
  @JsonKey(name: 'date_birth')
  String? dateBirth;
  @JsonKey(name: 'date_of_commencement')
  String? dateOfCommencement;
  @JsonKey(name: 'education_level')
  EducationLevel? educationLevel;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'years_of_experience')
  int? yearsOfExperience;
  @JsonKey(name: 'religion')
  Religion? religion;
  @JsonKey(name: 'city')
  City? city;
  @JsonKey(name: 'nationality')
  Nationality? nationality;
  @JsonKey(name: 'job')
  Job? job;
  @JsonKey(name: 'gender')
  String? gender;
  @JsonKey(name: 'marital_status')
  String? maritalStatus;
  @JsonKey(name: 'salaryCategory')
  SalaryCategory? salaryCategory;
  @JsonKey(name: 'date_document_it_in_qawwa')
  String? dateDocumentItInQawwa;
  @JsonKey(name: 'children_count')
  int? childrenCount;
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'salary_data')
  SalaryData? salaryData;

  ProfileDto({this.id, this.code, this.firstName, this.secondName, this.lastName, this.nationalId, this.dateBirth, this.dateOfCommencement, this.educationLevel, this.phone, this.address, this.yearsOfExperience, this.religion, this.city, this.nationality, this.job, this.gender, this.maritalStatus, this.salaryCategory, this.dateDocumentItInQawwa, this.childrenCount, this.token, this.salaryData});

   factory ProfileDto.fromJson(Map<String, dynamic> json) => _$ProfileDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ProfileDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class EducationLevel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  EducationLevel({this.id, this.name});

   factory EducationLevel.fromJson(Map<String, dynamic> json) => _$EducationLevelFromJson(json);

   Map<String, dynamic> toJson() => _$EducationLevelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Religion {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  Religion({this.id, this.name});

   factory Religion.fromJson(Map<String, dynamic> json) => _$ReligionFromJson(json);

   Map<String, dynamic> toJson() => _$ReligionToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class City {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  City({this.id, this.name});

   factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

   Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Nationality {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  Nationality({this.id, this.name});

   factory Nationality.fromJson(Map<String, dynamic> json) => _$NationalityFromJson(json);

   Map<String, dynamic> toJson() => _$NationalityToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Job {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  Job({this.id, this.name});

   factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

   Map<String, dynamic> toJson() => _$JobToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class SalaryCategory {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  SalaryCategory({this.id, this.name});

   factory SalaryCategory.fromJson(Map<String, dynamic> json) => _$SalaryCategoryFromJson(json);

   Map<String, dynamic> toJson() => _$SalaryCategoryToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class SalaryData {
  @JsonKey(name: 'base_salary')
  String? baseSalary;
  @JsonKey(name: 'housing_allowance')
  String? housingAllowance;
  @JsonKey(name: 'transport_allowance')
  String? transportAllowance;
  @JsonKey(name: 'gross_monthly_salary')
  String? grossMonthlySalary;
  @JsonKey(name: 'net_monthly_salary')
  String? netMonthlySalary;
  @JsonKey(name: 'housing_allowance_type')
  String? housingAllowanceType;
  @JsonKey(name: 'payment_method')
  String? paymentMethod;
  @JsonKey(name: 'bank_name')
  String? bankName;
  @JsonKey(name: 'bank_number')
  String? bankNumber;
  @JsonKey(name: 'bank_iban')
  String? bankIban;
  @JsonKey(name: 'insurance_activation_date')
  String? insuranceActivationDate;

  SalaryData({this.baseSalary, this.housingAllowance, this.transportAllowance, this.grossMonthlySalary, this.netMonthlySalary, this.housingAllowanceType, this.paymentMethod, this.bankName, this.bankNumber, this.bankIban, this.insuranceActivationDate});

   factory SalaryData.fromJson(Map<String, dynamic> json) => _$SalaryDataFromJson(json);

   Map<String, dynamic> toJson() => _$SalaryDataToJson(this);
}

