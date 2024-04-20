
import '../../data/models/facility_dto.dart';

class Facility {
  int? id;
  String? num;
  String? name;
  String? address;

  Facility({this.id, this.num, this.name, this.address});

   factory Facility.fromJson(FacilityDto json) => Facility(
        id: json.id,
        num: json.num,
        name: json.name,
        address: json.address,
      );
}