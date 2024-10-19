import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/src/main_index.dart';

import '../../../../core/widgets/buttons/options_menu_button.dart';
import '../../data/models/product_dto.dart';

class ProductItem extends BaseStatelessWidget {
  ProductItem({super.key,
   // required this.data
  });
  //final ProductDto data;
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: 10.paddingTop + 10.paddingHoriz,
      decoration: Decorations.shapeDecorationShadow(),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://turkeyana.com/wp-content/uploads/2017/06/330.jpg"),
                          fit: BoxFit.cover)),
                  //width: MediaQuery.of(context).size.width / 3,
                  width: 80,
                  height: 105,
                ),
                10.pw,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SemiBoldPrimaryText(
                      label: "قطنيل",
                      fontSize: 16,
                    ),
                    5.ph,
                    PrimaryRegularText(
                      label: "احسن قطعة  في السوق",
                      fontSize: 12,
                    ),
                    5.ph,
                    PrimaryRegularText(
                      label: "500 قطعه",
                      fontSize: 12,
                    ),
                    5.ph,
                    PrimaryRegularText(
                        label: "متاح",
                        fontSize: 12,
                        labelColor: AppColors.blueColor),
                    5.ph,
                    PrimaryRegularText(
                      label: " \$ 300",
                      fontSize: 14,
                    ),
                  ],
                ),
                10.pw,

              ],
            ),
          ),
          PositionedDirectional(
              top: 0,
              end: 0,
              child:  _OptionsMenuButton(onDelete: () {}))
        ],
      ),
    );
  }
}

class _OptionsMenuButton extends BaseStatelessWidget {
  final Function() onDelete;

  _OptionsMenuButton({
    Key? key,

    // required this.onChangeStatus,
    required this.onDelete,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle =
    primaryMediumStyle.copyWith(fontSize: 10, color: primaryColor);
    double iconSize = 16;
    return OptionsMenuButton(

      options: [
        BuildPopupMenuItemContent(
          title: strings.edit,
          isDivider: false,
          titleStyle: titleStyle,
          iconSize: iconSize,
        ),
        BuildPopupMenuItemContent(
          title: strings.delete,
          isDivider: false,
          titleStyle: titleStyle,
          iconSize: iconSize,
        ),
      ],
      onSelect: (value) async {
        if (value == 0) {

          pushNamed(Routes.addProductPage);

        } else if (value == 1) {}
      },
    );
  }
}
