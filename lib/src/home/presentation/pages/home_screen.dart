import 'package:app/core/widgets/texts/black_texts.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/src/home/data/models/FilterModel.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../../../core/firebase/notification_service.dart';
import '../../../../core/utils/storage.dart';
import '../../../../main.dart';
import '../../../main_index.dart';

import 'dart:io';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? localFilePath;
  late PDFViewController _pdfViewController;

  int _currentPage = 0;
  int _totalPages = 0;

  List<int> _filteredPages = [];

  @override
  void initState() {
    super.initState();
    loadPdfFromAssets();
    requestPermissions();


  }
  Future<void> requestPermissions() async {
    final iosPlugin = flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        IOSFlutterLocalNotificationsPlugin>();

    await iosPlugin?.requestPermissions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  List<FilterModel> listData = [
    FilterModel(name: "خَاتَمُ ٱلصَّلَوَاتِ", id: 3),
    FilterModel(name: "الأَسَاسُ", id: 6),
    FilterModel(name: "التَّحْصِينُ الشَّرِيفُ", id: 7),
    FilterModel(name: "الحِزْبُ الكَبِيرُ", id: 11),
    FilterModel(name: "الحِزْبُ الصَّغِيرُ", id: 22),
    FilterModel(name: "الصَّلَاةُ المُحَمَّدِيَّةُ", id: 25),
    FilterModel(name: "صَلَاةُ ابْنِ بَشِيشٍ", id: 27),
    FilterModel(name: "الحِزْبُ السَّيْفِيُّ", id: 31),
    FilterModel(name: "الحِزْبُ المُغْنِيُّ", id: 69),
    FilterModel(name: "حِزْبُ البَحْرِ", id: 77),
    FilterModel(name: "حِزْبُ النَّصْرِ المُبَارَكِ", id: 85),
    FilterModel(name: "التَّوَسُّلُ", id: 93),
    FilterModel(name: "تَوَسُّلُ السَّادَةِ البُرْهَانِيَّةِ", id: 100),
    FilterModel(name: "سِلْسِلَةُ المَشَايِخِ الصَّغِيرَةِ", id: 116),
    FilterModel(name: "سِلْسِلَةُ المَشَايِخِ الكَبِيرَةِ", id: 117),
    FilterModel(name: "الأَوْرَادُ المَرْبُوطَةُ", id: 119),
  ];

  Future<void> loadPdfFromAssets() async {
    try {
      // Load PDF file from assets
      final byteData = await rootBundle.load('assets/data.pdf');

      // Create a temporary file
      final tempFile = File('${(await getTemporaryDirectory()).path}/data.pdf');
      await tempFile.writeAsBytes(byteData.buffer.asUint8List(), flush: true);

      setState(() {
        localFilePath = tempFile.path;
      });

    } catch (e) {
      print('Error loading PDF: $e');
    }
  }

  void _nextFilteredPage() {
    if (_filteredPages.isEmpty) return;

    final currentIndex = _filteredPages.indexOf(_currentPage + 1);
    if (currentIndex != -1 && currentIndex < _filteredPages.length - 1) {
      _pdfViewController.setPage(_filteredPages[currentIndex + 1] - 1);
    }
  }

  showLastRed(){
    CoolAlert.show(
      context: context,
      type: CoolAlertType.warning,
      title: "",
      text: "هل تريد البدأ من حيث انتهيت",
      cancelBtnText: "لا",

      confirmBtnText: "نعم",
      backgroundColor: AppColors.primaryLight,
      confirmBtnColor: AppColors.primaryLight,
      showCancelBtn: true,
      loopAnimation: true,
      animType: CoolAlertAnimType. slideInRight,

      onConfirmBtnTap: (){
      int page=  KStorage.i.getLastRed??1 ;
        _pdfViewController.setPage(page);
       // Navigator.pop(context);
      }
    );
  }

  void _previousFilteredPage() {
    if (_filteredPages.isEmpty) return;

    final currentIndex = _filteredPages.indexOf(_currentPage + 1);
    if (currentIndex != -1 && currentIndex > 0) {
      _pdfViewController.setPage(_filteredPages[currentIndex - 1] - 1);
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: PrimaryBoldText(
            label: 'ٱلطَّرِيقَةُ ٱلْبُرْهَامِيَّةُ',
            fontSize: 25,
            labelColor: AppColors.primaryLight),
        actions: [
          10.pw,
          InkWell(
            onTap: buttonSheetWidget,
            child: const AppIcon(
              icon: AppIcons.filter,
              color: AppColors.primaryDark,
            ),
          ),
          10.pw,
        ],
        leading: InkWell(
            onTap: () {
              KStorage.i.setLastRed(_currentPage);
              showTopSnackBar(
                Overlay.of(context),
                const CustomSnackBar.success(
                  backgroundColor: AppColors.primaryLight,
                  textStyle: TextStyle(
                      color: Colors.white, fontSize: 14),
                  message: "تم  حفظ  التقدم",
                ),
              );
            },
            child: const Icon(Icons.bookmark_outline_rounded,
                color: Colors.black, size: 25)),
      ),
      body: localFilePath == null
          ? const Center(child: CircularProgressIndicator())
          : PDFView(
              filePath: localFilePath,
              enableSwipe: false,
              swipeHorizontal: true,
              onRender: (pages) {
                setState(() => _totalPages = pages!);
                _filteredPages =
                    List.generate(pages ?? 0, (index) => index + 1);
              },
              onViewCreated: (controller) {
                _pdfViewController = controller;
                int page=  KStorage.i.getLastRed??0 ;
                print(page);
                print("jkjjkjkjk");
                if(page!=0){
                  showLastRed();
                }

              },
              onPageChanged: (page, _) {
                setState(() => _currentPage = page!);
              },
            ),
      bottomNavigationBar: _filteredPages.isEmpty
          ? null
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _currentPage == 0
                    ? SizedBox()
                    : IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new),
                        onPressed: _previousFilteredPage,
                      ),
                PrimaryRegularText(label: 'صفحة رقم : ${_currentPage + 1}'),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  onPressed: _nextFilteredPage,
                ),
              ],
            ),
    );
  }

  void buttonSheetWidget() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.7,
          child: Column(
            children: [
              ListTile(
                  leading: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.close) // the arrow back icon
                        ),
                  ),
                  title: Center(
                      child: BlackBoldText(
                    label: "اِذْهَبْ إِلَى",
                    labelColor: Colors.black,
                  ) // Your desired title
                      )),
              Expanded(
                child: ListView.builder(
                  padding: 10.paddingAll,
                  itemCount: listData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: 15.paddingTop,
                      child: InkWell(
                          onTap: () {
                            _pdfViewController.setPage(listData[index].id! - 1);
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              Expanded(
                                child: BlackMediumText(
                                    label: listData[index].name ?? ""),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 17,
                              )
                            ],
                          )),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
