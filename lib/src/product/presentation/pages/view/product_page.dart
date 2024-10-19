import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/buttons/custom_button.dart';
import 'package:app/core/widgets/text-field/custom_text_field.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/src/product/presentation/pages/view/product_screen.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../bloc/product_bloc.dart';

class ProductPage extends BaseBlocWidget<UnInitState, ProductBloc> {
  ProductPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchInitialData();
  // }
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: strings.products,
      actions: [
        6.pw,
        InkWell(
            onTap: () {
              pushNamed(Routes.addProductPage);
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
  Widget buildWidget(BuildContext context, UnInitState state) {
    return ProductScreen();
  }
}
