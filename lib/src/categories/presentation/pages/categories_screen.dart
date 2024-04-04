
import '../../../../../core/widgets/text-field/custom_text_field_dark.dart';
import '../../../main_index.dart';
import '../../domain/entities/category.dart';
import '../widgets/task_item.dart';

class CategoriesScreen extends BaseStatelessWidget {
  final List<Category> categories;
   CategoriesScreen({Key? key, required this.categories}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Stack(
      children: [
        ListView.builder(
          itemCount: categories.length,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 70, bottom: 100),
          itemBuilder: (context, index) {
            return  CategoryItem(category: categories[index]);
          },
        ),
        CustomTextFieldDarkSearch(
          hintText: strings.search_tasks,
          controller: controller,
        ),

      ],
    );
  }
}
