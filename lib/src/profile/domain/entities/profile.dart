
import '../../data/models/city_dto.dart';
import '../../data/models/facility_dto.dart';
import '../../data/models/profile_dto.dart';
import 'city.dart';
import 'facility.dart';

class Profile {
  int? id;
  String? num;
  String? name;
  String? email;
  String? phone;
  String? address;
  Facility? facility;
  City? city;
  String? image;
  String? token;

  Profile({this.id, this.num, this.name, this.email, this.phone, this.address, this.facility, this.city, this.image, this.token});

   factory Profile.fromJson(ProfileDto json) => Profile(
        id: json.id,
        num: json.num,
        name: json.name,
        email: json.email,
        phone: json.phone,
        address: json.address,
        facility: Facility.fromJson(json.facility ?? FacilityDto()),
        city: City.fromJson(json.city ?? CityDto()),
        image: json.image,
        token: json.token,
      );
}

