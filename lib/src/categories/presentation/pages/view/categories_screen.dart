import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../../core/utils/navigator.dart';
import '../../../../../core/widgets/buttons/options_menu_button.dart';
import '../../../../main_index.dart';

class CategoriesScreen extends BaseStatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        mainAxisExtent: 170,
        crossAxisSpacing: 8.0,
      ),
      padding:10.paddingAll+10.paddingTop, // padding around the grid
      itemCount: 15,
      itemBuilder: (context, index) => Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.width * .34,
            width: MediaQuery.of(context).size.width * .5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://turkeyana.com/wp-content/uploads/2017/06/330.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _OptionsMenuButton(onDelete: () {}),
                )
              ],
            ),
          ),
          5.ph,
          PrimaryBoldText(
            label: "جلباب",
            fontSize: 16,
          )
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
      icon: const AppIcon(icon: AppIcons.menu2, size: 50),
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
          pushNamed(Routes.addCategoriesPage);
        } else if (value == 1) {}
      },
    );
  }
}
