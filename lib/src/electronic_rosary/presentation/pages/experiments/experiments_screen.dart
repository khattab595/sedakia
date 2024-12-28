import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/texts/row_texts.dart';
import '../../../../main_index.dart';
import '../../../data/model/experiments_dto.dart';

class ExperimentsScreen extends BaseStatelessWidget {
  List<ExperimentsDto> experimentsDto = [
    ExperimentsDto(experimentName: "سبحان الله", count: 8),
    ExperimentsDto(experimentName: "الله اكبر", count: 6),
    ExperimentsDto(experimentName: "الصلاة التفريجية", count: 4444),
    ExperimentsDto(experimentName: "يا لطيف", count: 129),
    ExperimentsDto(experimentName: "حسبنا الله ونعم الوكيل", count: 450),
    ExperimentsDto(
        experimentName: "الصلاة التفريجية - العدد الصغير", count: 111),
    ExperimentsDto(experimentName: "يا وارث", count: 1000),
    ExperimentsDto(experimentName: "يا واسع", count: 137),
    ExperimentsDto(experimentName: "آية الكرسي", count: 11),
    ExperimentsDto(experimentName: "سورة الشرح", count: 40),
    ExperimentsDto(experimentName: "سورة يس", count: 7),
    ExperimentsDto(experimentName: "يا قوي", count: 116),
    ExperimentsDto(experimentName: "يا قهار", count: 306),
    ExperimentsDto(experimentName: "اللهم اصرف عنا السوء", count: 7),
    ExperimentsDto(experimentName: "ليس لها من دون الله كاشفة", count: 313),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: experimentsDto.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                pushNamed(Routes.electronicRosaryPage,
                    arguments: experimentsDto[index]);
              },
              child: Container(
                decoration: Decorations.kDecorationBorderRadius(
                    radius: 8, borderColor: primaryColor),
                margin: 16.paddingHoriz + 10.paddingVert,
                padding: 16.paddingHoriz + 15.paddingVert,
                child: RowTexts(
                  title: experimentsDto[index].experimentName ?? "",
                  value: '/ ${experimentsDto[index].count ?? ""}',
                  titleStyle: primaryMediumStyle.copyWith(fontSize: 14),
                  valueStyle: primaryMediumStyle.copyWith(
                      fontSize: 14,
                      color: AppColors.primaryDark.withOpacity(0.4)),
                ),
              ));
        });
  }
}
