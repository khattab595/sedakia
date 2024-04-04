import 'package:app/core/widgets/images/image_network.dart';
import 'package:app/src/products/domain/entities/product.dart';

import '../../../../main_index.dart';
import 'price_widget.dart';


class ProductHomeItem extends StatelessWidget {
  final Product product;

  const ProductHomeItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      clipBehavior: Clip.antiAlias,
      margin: 10.paddingHoriz + 10.paddingBottom,
      decoration: Decorations.shapeDecorationShadow(
        colorShadow: context.dividerColor,
        radius: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageNetwork(
            image: product.img ?? '',
            height: 130,
            width: double.infinity,
            radius: 0,
          ),
          10.ph,
          Padding(
            padding: 5.paddingStart,
            child: Text(
              product.name ?? '',
              style: context.titleSmall
                  .copyWith(color: context.backgroundColor, fontSize: 16),
            ),
          ),
          Expanded(
            child: Padding(
              padding: 10.paddingHoriz,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PriceWidget(
                    price: product.price.toString(),
                    priceColor: context.backgroundColor,
                  ),
                  PriceWidget(
                    price: product.price.toString(),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 35,
              decoration: Decorations.kDecorationBottomRadius(
                color: context.primaryColor,
                radius: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Padding(
                      padding: 5.paddingHoriz,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppIconButton(
                            icon: AppIcons.menu,
                            size: 16,
                            onPressed: () {},
                          ),
                          10.pw,
                          AppIconButton(
                            icon: AppIcons.menu,
                            size: 16,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                    child: VerticalDivider(
                      color: context.cardColor,
                      width: 1,
                      thickness: 1,
                    ),
                  ),
                  FittedBox(
                    child: Padding(
                      padding: 5.paddingHoriz,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2000',
                            style: context.labelSmall.copyWith(fontSize: 10),
                          ),
                          Text(
                            '2000',
                            style: context.headlineMedium.copyWith(
                                color: context.backgroundColor, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
