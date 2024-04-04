import 'package:app/core/widgets/images/image_network.dart';

import '../../../../../core/utils/navigator.dart';
import '../../../../../core/widgets/icons/icon_text.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/entities/product_args.dart';

class ProductItem extends BaseStatelessWidget {
  final Product? product;
  final String? categoryName;
  final Function() onFavorite;
  final Function()? onTap;

  ProductItem(
      {Key? key, this.product, this.categoryName, this.onTap, required this.onFavorite})
      : super(key: key);

  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    isFavorite = product?.favorite ?? false;
    return InkWell(
      onTap: onTap ??
          () {
            // For checking if the product is from orders page or not if it's from orders page then we will navigate to product details page with isFromOrders = true
            // and add product to current order
            int? orderId = getArguments(context);
            Navigators.pushNamed(Routes.productDetailsPage,
                arguments:
                    ProductArgs(productId: product?.id ?? 0, orderId: orderId));
          },
      child: Container(
        width: 150,
        clipBehavior: Clip.hardEdge,
        margin: 5.paddingHoriz,
        decoration: Decorations.decorationStartEndRadiusBorder(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageNetwork(
              image: product?.img ?? '',
              height: 120,
              width: double.infinity,
              borderRadius: Decorations.startEndRadiusBorder(topStart: 9),
            ),
            5.ph,
            Padding(
              padding: 10.paddingStart,
              child: Text(
                product?.name ?? '',
                style: context.headlineSmall.copyWith(fontSize: 16),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Spacer(),
            Padding(
              padding: 14.paddingHoriz,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconText(
                    text: product?.price?.toString() ?? '',
                    icon: AppIcons.price,
                    textStyle: context.headlineMedium.copyWith(
                      fontSize: 15,
                    ),
                    iconSize: 10,
                  ),
                  IconText(
                    text: product?.price?.toString() ?? '',
                    icon: AppIcons.comm,
                    iconSize: 10,
                    textStyle: context.headlineMedium.copyWith(
                      fontSize: 14,
                      color: context.secondaryContainer,
                    ),
                    iconColor: context.secondaryContainer,
                  ),
                ],
              ),
            ),
            3.ph,
            Container(
              height: 25,
              color: context.secondary,
              padding: 14.paddingHoriz,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconText(
                    text: product?.price?.toString() ?? '',
                    icon: AppIcons.stock_outline,
                    iconColor: context.cardColor,
                    iconSize: 18,
                    textStyle: context.labelMedium.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  StatefulBuilder(
                    builder: (context, setState) {
                      return AppIconButton(
                        icon: isFavorite == true
                            ? AppIcons.favorite_bold
                            : AppIcons.favorite_outline,
                        color: context.cardColor,
                        onPressed: () async {
                           onFavorite();
                           setState(() {
                             isFavorite = !isFavorite;
                           });
                        },
                      );
                    }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
