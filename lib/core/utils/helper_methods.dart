import 'dart:convert';
import 'dart:io';

import 'package:app/src/auth/data/models/register_params.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../src/main_index.dart';
import '../../src/profile/data/models/profile_dto.dart';

class HelperMethods {
  static Future<CroppedFile?> getImagePicker() async {
    XFile? imageFile;
    imageFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    return await ImageCropper().cropImage(
      sourcePath: imageFile!.path,
      aspectRatio: const CropAspectRatio(ratioX: 2, ratioY: 1),
      uiSettings: [
        AndroidUiSettings(
            toolbarColor: Colors.black,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: true),
      ],
    );
  }

  static Future<File> getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    return File(pickedFile!.path);
  }

  static showErrorToast(String msg,
      {Color? color, ToastGravity? gravity}) async {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: gravity ?? ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color ?? Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static showSuccessToast(String msg,
      {Color? color, ToastGravity? gravity}) async {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: gravity ?? ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: color ?? Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static Future<void> launchCallPhone(String phoneNumber) async {
    Uri telephoneUrl = Uri.parse("tel:$phoneNumber");
    if (await canLaunchUrl(telephoneUrl)) {
      await launchUrl(telephoneUrl);
    } else {
      showErrorToast('حدث خطأ أثناء الاتصال بالرقم');
    }
  }

  static Future<void> launchWhatsApp(String phoneNumber) async {
    Uri whatsUpUrl = Uri.parse("whatsapp://send?phone=$phoneNumber");
    if (await canLaunchUrl(whatsUpUrl)) {
      await launchUrl(whatsUpUrl);
    } else {
      showErrorToast('حدث خطأ اثناء الاتصال بالواتساب');
    }
  }

  // telegram
  static Future<void> launchTelegram(String phoneNumber) async {
    Uri telegramUrl = Uri.parse("https://t.me/$phoneNumber");
    if (await canLaunchUrl(telegramUrl)) {
      await launchUrl(telegramUrl);
    } else {
      showErrorToast('حدث خطأ اثناء الاتصال بالتليجرام');
    }
  }

  static Future<void> launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showErrorToast('حدث خطأ أثناء الاتصال بالرابط');
    }
  }

  // show date picker
  static Future<String> datePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null) {
      return picked.toString();
    }
    return '';
  }

  static String formatDate(String date) {
    final DateTime dateTime = DateTime.parse(date);
    final String formatter = DateFormat('yyyy-MM-dd').format(dateTime);
    return formatter;
  }

  static setLanguage(String language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('language', language);
  }

  static Future<String> getLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('language') ?? 'en';
  }

  static Future<void> saveProfile(ProfileDto dto) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if(dto.token != null && dto.token!.isNotEmpty) {
        prefs.setString('profile', jsonEncode(dto.toJson()));
      } else {
        dto.token = await getToken();
        prefs.setString('profile', jsonEncode(dto.toJson()));
      }
    } on Exception catch (e) {
      print('e $e');
      rethrow;
    }
  }

  static Future<void> saveToken(String token) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', token);
    } on Exception catch (e) {
      print('e $e');
      rethrow;
    }
  }

  static Future<ProfileDto> getProfile() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String profile = prefs.getString('profile') ?? '';
      print('profile $profile');
      final decoded = jsonDecode(profile);
      print('decoded $decoded');
      return ProfileDto.fromJson(decoded);
    } on Exception catch (e) {
      print('getProfile error $e');
      return ProfileDto();
    }
  }

  static Future<DateTime?> selectDate(BuildContext context) async {
    ThemeData theme = Theme.of(context);
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(3555),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: injector<ServicesLocator>().appContext.primaryColor,
            ),
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: child!,
        );
      },
    );
  }

  static Future<String> getToken() async {
    try {
      ProfileDto profile = await getProfile();
      return profile.token ?? '';
    } on Exception catch (e) {
      return '';
    }
  }

  // is login
  static Future<bool> isLogin() async {
    try {
      String token = await getToken();
      return token.isNotEmpty;
    } on Exception catch (e) {
      return false;
    }
  }

  // remove token
  static Future<void> clearCashData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  static Future<bool> isFirstTime() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool isFirstTime = prefs.getBool('isFirstTime') ?? true;
      print('isFirstTime $isFirstTime');
      return isFirstTime;
    } on Exception catch (e) {
      print('e $e');
      return false;
    }
  }

  static Future<void> setFirstTime() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool('isFirstTime', false);
    } on Exception catch (e) {
      print('e $e');
    }
  }
}
