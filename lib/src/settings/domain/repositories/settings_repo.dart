
import '../entities/about.dart';
import '../entities/communication.dart';

abstract class SettingsRepo {
  Future<About> fetchAboutUs();
  Future<About> fetchTermsConditions();
  Future<Communication> fetchAboutLogeste();
}
