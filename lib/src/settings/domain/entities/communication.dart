
import '../../data/models/communication_dto.dart';

class Communication {
  int? id;
  String? Linkedin;
  String? Facebook;
  String? Telegram;
  String? Whatsapp;
  String? Google;

  Communication({this.id, this.Linkedin, this.Facebook, this.Telegram, this.Whatsapp, this.Google});

   factory Communication.fromDto(CommunicationDto json) => Communication(
        id: json.id,
        Linkedin: json.Linkedin,
        Facebook: json.Facebook,
        Telegram: json.Telegram,
        Whatsapp: json.Whatsapp,
        Google: json.Google,
      );
}

