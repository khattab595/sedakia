import 'package:app/core/utils/navigator.dart';

import '../../../../core/widgets/images/image_network.dart';
import '../../../../core/widgets/texts/black_texts.dart';
import '../../../../core/widgets/texts/hint_texts.dart';
import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../courses/domain/entities/course.dart';
import '../../../favorite/data/models/favorite_params.dart';
import '../../../main_index.dart';

class CustomLatestCourseItem extends BaseStatelessWidget {
  final Course myCourse;
  final double? imageHeight;
  final Function(FavoriteParams) onFavorite;

  CustomLatestCourseItem(
      {super.key,
      required this.myCourse,
      this.imageHeight,
      required this.onFavorite});

  @override
  Widget build(BuildContext context) {
    bool isFavorite = myCourse.isFavorite!;
    return InkWell(
      onTap: () {
        pushNamed(Routes.courseDetailsPage, arguments: myCourse);
      },
      child: Container(
          width: 226,
          padding: 8.paddingAll,
          decoration: Decorations.kDecorationRadius(
              borderColor: context.dividerColor, radius: 20, borderWidth: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                      height: imageHeight ?? 115,
                      width: double.infinity,
                      child: ImageNetwork(
                        image: myCourse.image!,
                        radius: 12,
                      )),
                  Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      padding: 4.paddingAll,
                      decoration: Decorations.kDecorationOnlyRadius(
                          radius: 500, color: context.primaryColor),
                      child: StatefulBuilder(builder: (context, setState) {
                        return AppIconButton(
                          icon: isFavorite == true
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          color: context.cardColor,
                          size: 20,
                          onPressed: () async {
                            isFavorite = await onFavorite(FavoriteParams(
                              id: myCourse.id ?? 0,
                              isFavorite: isFavorite,
                            ));
                            setState(() {});
                          },
                        );
                      }),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    7.ph,
                    HintMediumText(
                      label: myCourse.department ?? '',
                      fontSize: 12,
                    ),
                    Expanded(
                      child: BlackMediumText(
                        fontSize: 14,
                        textAlign: TextAlign.start,
                        label: myCourse.name ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    4.ph,
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        children: [
                          HintMediumText(
                            label: myCourse.teacher ?? '',
                            fontSize: 10,
                          ),
                          10.pw,
                          PrimaryMediumText(
                            label: myCourse.duration ?? '',
                            fontSize: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

 }
