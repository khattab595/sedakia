
import '../../data/models/profile_dto.dart';

class Profile {
  int? id;
  String? code;
  String? firstName;
  String? secondName;
  String? lastName;
  String? nationalId;
  String? dateBirth;
  String? dateOfCommencement;
  EducationLevel? educationLevel;
  String? phone;
  String? address;
  int? yearsOfExperience;
  Religion? religion;
  City? city;
  Nationality? nationality;
  Job? job;
  String? gender;
  String? maritalStatus;
  SalaryCategory? salaryCategory;
  String? dateDocumentItInQawwa;
  int? childrenCount;
  String? token;
  SalaryData? salaryData;
  String? image;

  Profile(
      {this.id,
      this.code,
      this.firstName,
      this.secondName,
      this.lastName,
      this.nationalId,
      this.dateBirth,
      this.dateOfCommencement,
      this.educationLevel,
      this.phone,
      this.address,
      this.yearsOfExperience,
      this.religion,
      this.city,
      this.nationality,
      this.job,
      this.gender,
      this.maritalStatus,
      this.salaryCategory,
      this.dateDocumentItInQawwa,
      this.childrenCount,
      this.token,
      this.salaryData,
      this.image,
      });

  factory Profile.fromDto(ProfileDto json) => Profile(
        id: json.id,
        code: json.code,
        firstName: json.firstName,
        secondName: json.secondName,
        lastName: json.lastName,
        nationalId: json.nationalId,
        dateBirth: json.dateBirth,
        dateOfCommencement: json.dateOfCommencement,
        educationLevel: json.educationLevel,
        phone: json.phone,
        address: json.address,
        yearsOfExperience: json.yearsOfExperience,
        religion: json.religion,
        city: json.city,
        job: json.job,
        gender: json.gender,
        maritalStatus: json.maritalStatus,
        salaryCategory: json.salaryCategory,
        dateDocumentItInQawwa: json.dateDocumentItInQawwa,
        childrenCount: json.childrenCount,
        token: json.token,
        salaryData: json.salaryData,
        image: json.image,
      );


  String fullName() {
    return "$firstName $secondName $lastName";
  }
}
