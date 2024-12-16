import 'package:app/core/utils/helper_methods.dart';

const String kMaterialAppTitle = 'Flutter Clean Architecture';

// API
const String kTestBaseUrl = 'https://tester100.motkaml.com/wp-json/api/';
const String kApiKey = 'ff957763c54c44d8b00e5e082bc76cb0';
const String baseApiUrl = "https://tester100.motkaml.com/wp-json/api/";
const String baseUrlLogin = "https://www.motkaml.com/wp-json/api/";
const String kBaseUrl = "";


Future<String> getUrlONCache() async {
  final url = await HelperMethods.getUrl();
  return url ?? "";
}

//const kBaseUrl = kIsTestVersion ? baseApiUrl : kTestBaseUrl;

const kIsTestVersion = true;
