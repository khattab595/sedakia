
import '../../data/models/social_media_dto.dart';

class SocialMedia {
  int? id;
  String? name;
  String? icon;
  String? url;

  SocialMedia({this.id, this.name, this.icon, this.url});

   factory SocialMedia.fromDto(SocialMediaDto json) {
     return SocialMedia(
       id: json.id,
       name: json.name,
       icon: json.icon,
       url: json.url,
     );
   }
}

