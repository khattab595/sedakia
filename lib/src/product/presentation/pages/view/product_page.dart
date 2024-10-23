import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/text-field/custom_text_field.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/src/product/presentation/pages/view/product_screen.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../data/models/product_dto.dart';
import '../../../data/models/search_params.dart';
import '../../bloc/product_bloc.dart';
import '../add/add_product_page.dart';

class ProductPage extends BaseBlocWidget<DataSuccess<ProductDto>, ProductBloc> {
  ProductPage({Key? key}) : super(key: key);
  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchGetData(SearchParams());
  }
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: strings.products,
      actions: [
        6.pw,
        InkWell(
            onTap: () {
              push(AddProductPage());
            },
            child: Container(
              alignment: Alignment.center,
              width: 95,
              height: 30,
              decoration: Decorations.kDecorationBorderRadius(
                  radius: 7, color:  context.theme.primaryColor),
              child: PrimaryRegularText(
                label: strings.add_product,
                fontSize: 12,
                labelColor: context.textTheme.labelSmall!.color,
                textAlign: TextAlign.center,
              ),
            )),
        6.pw,
        InkWell(
            onTap: () {
              pushNamed(Routes.categoriesPage);
            },
            child: Container(
              alignment: Alignment.center,
              width: 60,
              height: 30,
              decoration: Decorations.kDecorationBorderRadius(
                  radius: 7, color: AppColors.blueColor),
              child: PrimaryRegularText(
                label: strings.categories,
                fontSize: 12,
                labelColor: context.textTheme.labelSmall!.color,
                textAlign: TextAlign.center,
              ),
            )),
        6.pw,
      ],
      body: Column(
        children: [
          Padding(
            padding: 15.paddingHoriz + 10.paddingTop,
            child: CustomTextField(
              onChanged: (value){
               bloc.searchProduct(SearchParams(searchText: value));
              },
              hintText: strings.search,
              minHeight: 45,
              validator: (p0) => null,
            ),
          ),
          Expanded(child: buildConsumer(context)),
        ],
      ),
    );
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<ProductDto> state) {
    return ProductScreen(
      data: state.data!,
      onDelete: (id)=>bloc.deleteProduct(id),
    );
  }


  @override
  void onSuccessDismissed() {
    Navigators.pushNamedAndRemoveUntil(Routes.productPage);
  }
}
