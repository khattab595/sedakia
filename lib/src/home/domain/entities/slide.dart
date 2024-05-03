
import '../../data/models/slide_dto.dart';

class Slide {
  int? id;
  String? title;
  String? images;
  String? description;

  Slide({this.id, this.title, this.images, this.description});

   factory Slide.fromDto(SlideDto json) => Slide(
       id: json.id,
       title: json.title,
       images: json.images,
       description: json.description,
   );
}

