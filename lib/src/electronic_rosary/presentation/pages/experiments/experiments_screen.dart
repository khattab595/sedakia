import 'package:app/core/widgets/texts/row_texts.dart';
import '../../../../main_index.dart';
import '../../../data/model/experiments_dto.dart';

class ExperimentsScreen extends BaseStatelessWidget {
  ExperimentsScreen({Key? key, required this.experimentsDto}) : super(key: key);
  List<ExperimentsDto> experimentsDto ;
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
