import '../entities/about.dart';

abstract class SettingsRepo {
  Future<About> fetchAboutUs();
  Future<About> fetchTermsConditions();
}
