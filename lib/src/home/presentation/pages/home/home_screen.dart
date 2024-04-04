import '../../../../main_index.dart';
import '../../../../invoices/presentation/product/widgets/products_list_title.dart';
import '../../../domain/entities/home.dart';
import '../../widgets/home_header.dart';
import '../../widgets/sliders_home.dart';

class HomeScreen extends BaseStatelessWidget {
  final Home home;
  final Function(int) onFavorite;

  HomeScreen({Key? key, required this.home, required this.onFavorite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.scaffoldBackgroundColor,
      child: SingleChildScrollView(
        padding: 16.paddingVert,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(
              statistics: home.statistics ?? [],
            ),
            16.ph,
            SlidersHome(
              images: home.slider ?? [],
            ),
            ListView.builder(
                itemCount: home.sections?.length ?? 0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return (home.sections![index].products == null || home.sections![index].products!.isEmpty) ?
                  const SizedBox.shrink() :
                    SizedBox(
                      child: Padding(
                      padding: 10.paddingBottom,
                      child: ProductsListTitle(
                        section: home.sections![index],
                        onFavorite: onFavorite,
                      ),
                  ),
                    );
                }),
            // CategoryTitle(
            //   title: 'Categories',
            // ),
            // CategoriesHomeList(
            //   categories: [
            //     Category(
            //       id: 1,
            //       name: 'Formal wear',
            //     ),
            //     Category(
            //       id: 2,
            //       name: 'Casual wear',
            //     ),
            //     Category(
            //       id: 3,
            //       name: 'Sports wear',
            //     ),
            //     Category(
            //       id: 4,
            //       name: 'Formal wear',
            //     ),
            //     Category(
            //       id: 5,
            //       name: 'Casual wear',
            //     ),
            //     Category(
            //       id: 6,
            //       name: 'Sports wear',
            //     ),
            //   ],
            // ),

            // HomeHeader(),
            // const SlidersHome(
            //   images: ['', '', ''],
            // ),
            // const HomeSliders(),
            // RowSeeAllText(
            //   routeName: Routes.brandsPage,
            //   title: context.strings.popular_brand,
            // ),
            // const SizedBox(
            //   height: 220,
            //   child: BrandsList(
            //     isHome: true,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
