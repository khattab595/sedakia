
import '../../../main_index.dart';
import '../../domain/entities/category.dart';


class CategoryItem extends BaseStatelessWidget {
  final Category category;
  CategoryItem( {Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: Decorations.kDecorationBorderRadius(
        color: theme.cardColor,
          borderColor: theme.primaryColor,
        borderWidth: 1,
        radius: 16
      ).copyWith(
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/200/300'),
          fit: BoxFit.cover,
          // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
        ),
      ),
      padding: 12.paddingAll,
      child: Text(
        category.categoryName ?? '',
        style: theme.textTheme.bodyMedium,
      ),
    );
  }
}
