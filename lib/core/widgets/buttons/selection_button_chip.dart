import 'package:app/src/main_index.dart';
import 'package:flutter/material.dart';

class SelectionButtonChip extends StatelessWidget {
  final List<SelectionItem> items;
  final EdgeInsetsGeometry? padding;
  final void Function(SelectionItem)? onSelected;

  const SelectionButtonChip(
      {Key? key, required this.items, this.onSelected, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SelectionItem _selectedType =
        items.isNotEmpty ? items.first : SelectionItem(id: '', title: '');
    ThemeData theme = Theme.of(context);
    return StatefulBuilder(
      builder: (context, setState) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: items
                .map((item) => Container(
                      margin: 10.paddingAll,
                      decoration: Decorations.shapeDecorationShadow(
                        color: _selectedType == item
                            ? theme.primaryColor
                            : theme.cardColor,
                      ),
                      child: ChoiceChip(
                        label: Text(item.title,
                            style: context.headlineLarge.copyWith(
                              color: _selectedType == item
                                  ? context.labelMedium.color
                                  : context.headlineLarge.color,
                              fontSize: 15,
                            )),
                        selected: _selectedType == item,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        showCheckmark: false,
                        selectedColor: theme.primaryColor,
                        backgroundColor: theme.cardColor,
                        side: BorderSide.none,
                        padding: padding ??
                            const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onSelected: (selected) {
                          if (selected) {
                            setState(() {
                              _selectedType = item;
                            });
                            onSelected!(_selectedType);
                          }
                        },
                      ),
                    ))
                .toList(),
          ),
        );
      },
    );
  }
}

class SelectionItem {
  final String id;
  final String title;

  SelectionItem({required this.id, required this.title});
}
