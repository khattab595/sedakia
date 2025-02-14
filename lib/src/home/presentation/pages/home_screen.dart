import 'package:app/core/utils/helper_methods.dart';
import 'package:app/core/widgets/texts/black_texts.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/src/home/data/models/FilterModel.dart';
import 'package:cool_alert/cool_alert.dart';

import '../../../../core/utils/storage.dart';
import '../../../../main.dart';
import '../../../main_index.dart';

import 'dart:io';

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

  showLastRed() {
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
        animType: CoolAlertAnimType.slideInRight,
        onConfirmBtnTap: () {
          int page = KStorage.i.getLastRed ?? 1;
          _pdfViewController.setPage(page);
          // Navigator.pop(context);
        });
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
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppIcon(icon: "assets/logo/log.png"),
            PrimaryBoldText(
                label: "الدسوقي",
                fontSize: 20,
                labelColor: AppColors.primaryLight),
          ],
        ),
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
              HelperMethods.showSuccessToast("تم حفظ التقدم");
              // showTopSnackBar(
              //   Overlay.of(context),
              //   const CustomSnackBar.success(
              //     backgroundColor: AppColors.primaryLight,
              //     textStyle: TextStyle(
              //         color: Colors.white, fontSize: 14),
              //     message: "تم  حفظ  التقدم",
              //   ),
              // );
            },
            child: const Icon(Icons.bookmark_outline_rounded,
                color: Colors.black, size: 25)),
      ),
      body: localFilePath == null
          ? const Center(child: CircularProgressIndicator())
          : Directionality(
              textDirection: TextDirection.ltr,
              child: PDFView(
                filePath: localFilePath,
                enableSwipe: true,
                fitEachPage: true,
                swipeHorizontal: true,
                fitPolicy: FitPolicy.WIDTH,
                autoSpacing: true,
                pageFling: true,
                pageSnap: true,
                onRender: (pages) {
                  setState(() => _totalPages = pages!);
                  _filteredPages =
                      List.generate(pages ?? 0, (index) => index + 1);
                },
                onViewCreated: (controller) async {
                  _pdfViewController = controller;
                  int page = KStorage.i.getLastRed ?? 0;
                  print(page);
                  print("jkjjkjkjk");
                  if (page != 0) {
                    showLastRed();
                  }
                },
                onPageChanged: (page, _) {
                  setState(() => _currentPage = page!);
                },
              ),
            ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: _nextFilteredPage,
          ),
          PrimaryRegularText(label: 'صفحة رقم : ${_currentPage + 1}'),
          _currentPage == 0
              ? SizedBox()
              : IconButton(
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  onPressed: _previousFilteredPage,
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
//
// import 'package:app/core/exceptions/extensions.dart';
// import 'package:cool_alert/cool_alert.dart';
// import 'package:flutter/material.dart';
// import 'package:chakre_pdf_viewer/chakre_pdf_viewer.dart';
// import 'dart:io';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:path_provider/path_provider.dart';
//
// import '../../../../core/assets/app_icons.dart';
// import '../../../../core/themes/colors.dart';
// import '../../../../core/utils/helper_methods.dart';
// import '../../../../core/utils/storage.dart';
// import '../../../../core/widgets/buttons/app_icon.dart';
// import '../../../../core/widgets/texts/black_texts.dart';
// import '../../../../core/widgets/texts/primary_texts.dart';
// import '../../data/models/FilterModel.dart';
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//
//
//   PageController pageController=PageController();
//   bool _isLoading = true;
//   PDFDocument? document;
//
//   @override
//   void initState() {
//     super.initState();
//     loadDocument();
//   }
//
//   @override
//   void dispose() {
//     document?.clearImageCache();
//     document = null;
//     super.dispose();
//   }
//
//   loadDocument() async {
//     document = await PDFDocument.fromAsset('assets/data.pdf');
//     setState(() => _isLoading = false);
//   }
//
//   List<FilterModel> listData = [
//     FilterModel(name: "خَاتَمُ ٱلصَّلَوَاتِ", id: 3),
//     FilterModel(name: "الأَسَاسُ", id: 6),
//     FilterModel(name: "التَّحْصِينُ الشَّرِيفُ", id: 7),
//     FilterModel(name: "الحِزْبُ الكَبِيرُ", id: 11),
//     FilterModel(name: "الحِزْبُ الصَّغِيرُ", id: 22),
//     FilterModel(name: "الصَّلَاةُ المُحَمَّدِيَّةُ", id: 25),
//     FilterModel(name: "صَلَاةُ ابْنِ بَشِيشٍ", id: 27),
//     FilterModel(name: "الحِزْبُ السَّيْفِيُّ", id: 31),
//     FilterModel(name: "الحِزْبُ المُغْنِيُّ", id: 69),
//     FilterModel(name: "حِزْبُ البَحْرِ", id: 77),
//     FilterModel(name: "حِزْبُ النَّصْرِ المُبَارَكِ", id: 85),
//     FilterModel(name: "التَّوَسُّلُ", id: 93),
//     FilterModel(name: "تَوَسُّلُ السَّادَةِ البُرْهَانِيَّةِ", id: 100),
//     FilterModel(name: "سِلْسِلَةُ المَشَايِخِ الصَّغِيرَةِ", id: 116),
//     FilterModel(name: "سِلْسِلَةُ المَشَايِخِ الكَبِيرَةِ", id: 117),
//     FilterModel(name: "الأَوْرَادُ المَرْبُوطَةُ", id: 119),
//   ];
//
//
//
//
//
//   showLastRed(){
//     CoolAlert.show(
//       context: context,
//       type: CoolAlertType.warning,
//       title: "",
//       text: "هل تريد البدأ من حيث انتهيت",
//       cancelBtnText: "لا",
//
//       confirmBtnText: "نعم",
//       backgroundColor: AppColors.primaryLight,
//       confirmBtnColor: AppColors.primaryLight,
//       showCancelBtn: true,
//       loopAnimation: true,
//       animType: CoolAlertAnimType. slideInRight,
//
//       onConfirmBtnTap: (){
//       int page=  KStorage.i.getLastRed??1 ;
//       document?.get(page: page,zoomSteps: 10);
//        // Navigator.pop(context);
//       }
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//             appBar: AppBar(
//         centerTitle: true,
//         title: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             AppIcon(icon: "assets/logo/log.png"),
//             PrimaryBoldText(
//                 label:"الدسوقي",
//                 fontSize: 20,
//                 labelColor: AppColors.primaryLight),
//           ],
//         ),
//         actions: [
//           10.pw,
//           InkWell(
//             onTap: buttonSheetWidget,
//             child: const AppIcon(
//               icon: AppIcons.filter,
//               color: AppColors.primaryDark,
//             ),
//           ),
//           10.pw,
//         ],
//         leading: InkWell(
//             onTap: () {
//               KStorage.i.setLastRed(int.parse(pageController.page.toString()));
//               HelperMethods.showSuccessToast("تم حفظ التقدم");
//               // showTopSnackBar(
//               //   Overlay.of(context),
//               //   const CustomSnackBar.success(
//               //     backgroundColor: AppColors.primaryLight,
//               //     textStyle: TextStyle(
//               //         color: Colors.white, fontSize: 14),
//               //     message: "تم  حفظ  التقدم",
//               //   ),
//               // );
//             },
//             child: const Icon(Icons.bookmark_outline_rounded,
//                 color: Colors.black, size: 25)),
//       ),
//       body:  _isLoading
//           ? Center(child: CircularProgressIndicator())
//           :PDFViewer(
//         document: document!,
//         controller: pageController,
//
//
//             ),
//     );
//   }
//   void buttonSheetWidget() {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       builder: (context) {
//         return FractionallySizedBox(
//           heightFactor: 0.7,
//           child: Column(
//             children: [
//               ListTile(
//                   leading: Material(
//                     color: Colors.transparent,
//                     child: InkWell(
//                         onTap: () {
//                           Navigator.of(context).pop();
//                         },
//                         child: const Icon(Icons.close) // the arrow back icon
//                         ),
//                   ),
//                   title: Center(
//                       child: BlackBoldText(
//                     label: "اِذْهَبْ إِلَى",
//                     labelColor: Colors.black,
//                   ) // Your desired title
//                       )),
//               Expanded(
//                 child: ListView.builder(
//                   padding: 10.paddingAll,
//                   itemCount: listData.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Padding(
//                       padding: 15.paddingTop,
//                       child: InkWell(
//                           onTap: () {
//                             document?.get(page: listData[index].id! - 1);
//                             Navigator.pop(context);
//                           },
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 child: BlackMediumText(
//                                     label: listData[index].name ?? ""),
//                               ),
//                               const Icon(
//                                 Icons.arrow_forward_ios_rounded,
//                                 size: 17,
//                               )
//                             ],
//                           )),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
