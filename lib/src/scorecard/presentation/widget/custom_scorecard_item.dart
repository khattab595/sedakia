import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class CustomScoreCardItem extends BaseStatelessWidget {
   CustomScoreCardItem( {super.key,required this.title, required this.description, required this.degree,this.onPressed,});
  final String title;
  final String description;
  final String degree;
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
                        label:title,
                        fontSize: 14,
                      ),
                      MediumText(
                        label:description,
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
                        label:degree,
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
