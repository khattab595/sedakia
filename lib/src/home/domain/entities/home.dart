import '../../data/models/home_dto.dart';

class Home{
  List<Statistic>? statistics;
  List<String>? slider;
  List? sections;

  Home({this.statistics, this.slider, this.sections});

  factory Home.fromJson(HomeDto json) {
    return Home(
        statistics: json.statistics,
        slider: json.slider,
        sections: json.sections,
    );
  }
}
