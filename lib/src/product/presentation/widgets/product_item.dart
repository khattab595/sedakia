import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/src/main_index.dart';

import '../../../../core/widgets/buttons/options_menu_button.dart';
import '../../data/models/product_dto.dart';
import '../../data/models/product_params.dart';
import '../pages/add/add_product_page.dart';

class ProductItem extends BaseStatelessWidget {
  ProductItem({super.key, required this.data, required this.onDelete});
  final ProductData data;
  final Function(int id) onDelete;
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
                      image: DecorationImage(
                          image: NetworkImage(data.imageUrl ?? ""),
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: SemiBoldPrimaryText(
                        label: data.name ?? "",
                        fontSize: 16,
                        labelStyle: primarySemiBoldStyle.copyWith(
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    5.ph,
                    PrimaryRegularText(
                      label: data.shortDescription ?? "",
                      fontSize: 12,
                    ),
                    5.ph,
                    PrimaryRegularText(
                      label: "${data.stockQuantity} ${strings.piece}",
                      fontSize: 12,
                    ),
                    5.ph,
                    PrimaryRegularText(
                        label: data.stockStatus ?? "",
                        fontSize: 12,
                        labelColor: AppColors.blueColor),
                    5.ph,
                    PrimaryRegularText(
                      label: " \$ ${data.price}",
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
              child: _OptionsMenuButton(
                onDelete: onDelete,
                data: data,
              ))
        ],
      ),
    );
  }
}

class _OptionsMenuButton extends BaseStatelessWidget {
  final Function(int id) onDelete;
  final ProductData data;
  _OptionsMenuButton({
    Key? key,

    // required this.onChangeStatus,
    required this.onDelete,
    required this.data,
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
          push(AddProductPage(data: data));
        } else if (value == 1) {
          onDelete(int.parse(data.id.toString()));
        }
      },
    );
  }
}
