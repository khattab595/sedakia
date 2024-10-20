import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/buttons/options_menu_button.dart';
import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/Data.dart';

class CategoryItem extends BaseStatelessWidget {
  CategoryItem({super.key, required this.data, required this.onDelete});
  final CategoryData data;
  final Function(int id) onDelete;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * .34,
          width: MediaQuery.of(context).size.width * .5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: NetworkImage(
                    "https://turkeyana.com/wp-content/uploads/2017/06/330.jpg"
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
                ),
              )
            ],
          ),
        ),
        5.ph,
        PrimaryBoldText(
          label: "moo",
          //data.name??"",
          fontSize: 16,
        )
      ],
    );
  }
}

class _OptionsMenuButton extends BaseStatelessWidget {
  final Function(int id) onDelete;
  final CategoryData data;
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
        } else if (value == 1) {
          onDelete(int.parse(data.id.toString()));
        }
      },
    );
  }
}
