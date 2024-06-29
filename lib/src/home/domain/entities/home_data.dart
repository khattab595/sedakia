import '../../data/models/home_data_dto.dart';

class HomeData {
  List<SliderDto>? sliders;
  CurrentProjectDto? currentProject;
  List<ModelDto>? models;
  String? employeeName;
  String? employeeImage;
  String? employeeStatus;

  HomeData(
      {this.sliders,
      this.currentProject,
      this.models,
      this.employeeName,
      this.employeeImage,
      this.employeeStatus});

  factory HomeData.fromJson(HomeDataDto json) => HomeData(
        sliders: json.sliders,
        currentProject: json.currentProject,
        models: json.models,
        employeeName: '',
        employeeImage: '',
        employeeStatus: json.employeeStatus,
      );
}
