import 'package:app/core/widgets/texts/row_texts.dart';
import '../../../../main_index.dart';
import '../../../data/model/experiments_dto.dart';

class ExperimentsScreen extends BaseStatelessWidget {
  ExperimentsScreen({Key? key, required this.experimentsDto}) : super(key: key);
  List<ExperimentsDto> experimentsDto ;
  List<ExperimentsDto> data = [
    ExperimentsDto(
        experimentName: "سبحان الله",
        count: 1
    ), ExperimentsDto(
        experimentName: "الله اكبر",
        count: 2
    ), ExperimentsDto(
        experimentName: "الصلاة التفريجية",
        count: 3
    ), ExperimentsDto(
        experimentName: "يا لطيف",
        count: 4
    ), ExperimentsDto(
        experimentName: "حسبنا الله ونعم الوكيل",
        count: 5
    ), ExperimentsDto(
        experimentName: "الصلاة التفريجية - العدد الصغير",
        count: 6
    ), ExperimentsDto(
        experimentName: "يا وارث",
        count: 7
    ), ExperimentsDto(
        experimentName: "سبحان الله",
        count: 8
    ), ExperimentsDto(
        experimentName: "يا واسع",
        count: 9
    ),ExperimentsDto(
        experimentName: "آية الكرسي",
        count: 10
    ),ExperimentsDto(
        experimentName: "سورة الشرح",
        count: 11
    ),ExperimentsDto(
        experimentName: "سورة يس",
        count: 12
    ),ExperimentsDto(
        experimentName: "يا قوي",
        count: 13
    ),ExperimentsDto(
        experimentName: "يا قهار",
        count: 14
    ),ExperimentsDto(
        experimentName: "اللهم اصرف عنا السوء",
        count: 15
    ),ExperimentsDto(
        experimentName: "ليس لها من دون الله كاشفة",
        count: 16
    ),


  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: experimentsDto.length,
        itemBuilder: (context,index){
      return Container(
        decoration: Decorations.kDecorationBorderRadius(
            radius: 8, borderColor: primaryColor),
        margin: 16.paddingHoriz+10.paddingVert,
        padding: 16.paddingHoriz+15.paddingVert,
        child: RowTexts(
          title: experimentsDto[index].experimentName??"",
          value: '/ ${experimentsDto[index].count??""}',
          titleStyle: primaryMediumStyle.copyWith(fontSize: 14),
          valueStyle: primaryMediumStyle.copyWith(
              fontSize: 14, color: AppColors.primaryDark.withOpacity(0.4)),
        ),
      );
    });
  }
}
