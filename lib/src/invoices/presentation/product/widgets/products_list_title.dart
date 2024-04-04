import 'package:app/src/invoices/presentation/product/widgets/product_item.dart';
import 'package:app/src/invoices/presentation/product/widgets/show_more_product.dart';

import '../../../../home/data/models/home_dto.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/product.dart';
import 'category_title.dart';

///  Created by harbey on 9/16/2023.
class ProductsListTitle extends StatelessWidget {
  final Section section;
  final Function(int) onFavorite;

  const ProductsListTitle({Key? key, required this.section, required this.onFavorite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoryTitle(title: section.title ?? ''),
        5.ph,
        SizedBox(
          height: 200,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ListView.builder(
                  itemCount: section.products?.length ?? 0,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductItem(
                      categoryName: section.title,
                      product: Product.fromDto(section.products![index]),
                      onFavorite: () => onFavorite(section.products![index].id ?? 0),
                    );
                  },
                ),
                if (section.seeMore == true)
                  ShowMoreProduct(
                    categoryName: section.title,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
