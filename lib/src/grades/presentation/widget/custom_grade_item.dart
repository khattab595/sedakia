import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/grade.dart';

class CustomGradeItem extends BaseStatelessWidget {
   CustomGradeItem( {super.key , required this.grade ,this.onPressed,});
    final Grade grade;
   dynamic Function()? onPressed;
   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 8.paddingVert,
      child: Container(
        decoration: Decorations.kDecorationBorderRadius(),
        child: Padding(
          padding: 12.paddingAll,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldText(
                        label:grade.name!,
                        fontSize: 14,
                      ),
                      MediumText(
                        label:grade.courseName!,
                        fontSize: 10,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      BoldText(
                        label:strings.degree,
                        fontSize: 14,
                      ),
                      PrimaryBoldText(
                        label:grade.grade!.toString(),
                        fontSize: 24,
                      ),
                    ],
                  ),
                ],
              ),
              8.ph,
              PrimaryButton(
                height: 40,
                title: strings.show_test,
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}
