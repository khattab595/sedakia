import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../main_index.dart';
import '../pages/search_screen.dart';

///  Created by harbey on 9/5/2023.
class SearchHome extends StatelessWidget {
  const SearchHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          70.paddingEnd + (kToolbarHeight - 5).paddingTop + 40.paddingStart,
      child: Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: [
          CustomTextField(
            radius: 50,
              contentPadding: 0.paddingAll,
            fillColor: context.backgroundColor,
            colorBorderSide: context.backgroundColor,
            prefixIcon: AppIcon(
              icon: AppIcons.search,
              color: context.cardColor,
              padding: 8.paddingVert,
            ),
            minHeight: 30,
            hintText: context.strings.search_here,
            hintStyle: context.labelSmall.copyWith(fontSize: 12),
            onTap: () {
            //  onSearch(context);
              Navigators.pushNamed(Routes.searchProductsPage);
            },
          ),
          Padding(
            padding: 10.paddingEnd,
            child: Image.asset(
              AppImages.logo,
              height: 30,
              width: 50,
            ),
          ),
        ],
      ),
    );
  }

  onSearch(BuildContext context) async {
    await showSearch(
      context: context,
      delegate: TheSearch(contextPage: context),
      query: '',
    );
  }
}
