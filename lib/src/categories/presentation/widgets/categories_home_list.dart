import 'package:app/core/widgets/buttons/app_circular_icon_button.dart';
import 'package:app/src/categories/presentation/widgets/task_item.dart';
import 'package:app/src/main_index.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/category.dart';

///  Created by harbey on 9/25/2023.
class CategoriesHomeList extends StatelessWidget {
  final List<Category> categories;
  const CategoriesHomeList({Key? key, required this.categories}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Category> categories = this.categories.length <= 4 ? this.categories : this.categories.sublist(0, 4);
    return StatefulBuilder(
      builder: (context, setState) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              color: context.dividerColor.withOpacity(0.8),
              margin: 10.paddingBottom,
              child: GridView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                padding: 10.paddingAll + 30.paddingBottom,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 2.2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return CategoryItem(category: categories[index]);
                },
              ),
            ),
            AppCircularIconButton(
              icon: AppIcons.arrow_down,
              size: 12,
              radius: 12,
              backgroundColor: context.dividerColor.withOpacity(0.8),
              onPressed: () {
                if(this.categories.length > 4 && categories.length <= 4){
                  setState(() {
                    categories = this.categories;
                  });
                } else {
                  setState(() {
                    categories = this.categories.sublist(0, 4);
                  });
                }
              },
            ),
          ],
        );
      }
    );
  }
}
