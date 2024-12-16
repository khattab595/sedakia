import '../../data/models/setting_dto.dart';

class SettingModel {
  SettingModel({
      this.id, 
      this.thisApp, 
      this.features, 
      this.services, 
      this.privacy, 
      this.createdAt, 
      this.updatedAt,});

  String? id;
  String? thisApp;
  String? features;
  String? services;
  String? privacy;
  String? createdAt;
  String? updatedAt;

  factory SettingModel.fromDto(SettingDto json) {
    return SettingModel(
      id: json.id,
      thisApp: json.thisApp,
      features: json.features,
      services: json.services,
      privacy: json.privacy,
      createdAt: json.createdAt,
      updatedAt: json.updatedAt,
    );
  }

}