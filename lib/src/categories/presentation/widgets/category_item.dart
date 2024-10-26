import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/buttons/options_menu_button.dart';
import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/Data.dart';
import '../pages/add/add_categories_page.dart';

class CategoryItem extends BaseStatelessWidget {
  CategoryItem({super.key, required this.onRefresh, required this.data, required this.onDelete});
  final CategoryData data;
  final Function(int id) onDelete;
  final Function( ) onRefresh;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * .34,
          width: MediaQuery.of(context).size.width * .5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(data.image ?? ""
                    //  data.image??""
                    ),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _OptionsMenuButton(
                  onDelete: onDelete,
                  data: data,
                    onRefresh:onRefresh
                ),
              )
            ],
          ),
        ),
        5.ph,
        PrimaryBoldText(
          label: data.name ?? "",
          //data.name??"",
          fontSize: 16,
        )
      ],
    );
  }
}

class _OptionsMenuButton extends BaseStatelessWidget {
  final Function(int id) onDelete;
  final Function( ) onRefresh;
  final CategoryData data;
  _OptionsMenuButton({
    Key? key,

    // required this.onChangeStatus,
    required this.onDelete,
    required this.onRefresh,
    required this.data,
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
          AddCategoriesPage.push(context, categoryData:  data, onSuccess: () {
            print('isTrue');
            onRefresh();
          });

        } else if (value == 1) {
          onDelete(int.parse(data.id.toString()));
        }
      },
    );
  }
}
