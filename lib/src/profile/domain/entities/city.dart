
import '../../data/models/city_dto.dart';

class City {
  int? id;
  String? name;

  City({this.id, this.name});

   factory City.fromJson(CityDto json) => City(
        id: json.id,
        name: json.name,
      );
}

