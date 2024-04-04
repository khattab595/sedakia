
import '../../data/models/country_dto.dart';

class Country {
  int? id;
  String? name;
  String? currency;
  String? lang;
  String? code;

  Country({this.id, this.name, this.currency, this.lang, this.code});

   factory Country.fromDto(CountryDto json) {
     return Country(
       id: json.id,
       name: json.name,
       currency: json.currency,
       lang: json.lang,
       code: json.code
     );
   }
}

