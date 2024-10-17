import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/buttons/app_icon.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:flutter/material.dart';

 import '../../assets/app_icons.dart';
import '../../components/base_stateless_widget.dart';


class OptionsMenuButton extends BaseStatelessWidget {
  final List<Widget>? options;
  final List<String>? optionsString;
  final Widget? title;
  final Widget? icon;
  final ShapeBorder? shape;
  final EdgeInsetsGeometry? padding;
  final Function(int index) onSelect;
  OptionsMenuButton(
      {this.options,
        required this.onSelect,
        this.title,
        this.icon,
        this.optionsString,
        this.padding,
        this.shape
      })
      : assert(options == null || optionsString == null,
  'Cannot provide both a optionsString and a options');
  @override
  Widget build(BuildContext context) {
    return buildOptions();
  }

  Widget buildOptions() {
    return PopupMenuButton(
      padding: 0.paddingAll,
        child: icon != null ? null : (title ?? defaultIcon()),
        icon: icon,

        position: PopupMenuPosition.under,
        itemBuilder: (_) =>

        options != null ? optionItems() : optionItemsBuildWidget(),
        shape: shape ?? RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onSelected: (value) {
          onSelect(int.parse(value.toString()));
        });
  }

  List<PopupMenuItem> optionItemsBuildWidget() {
    final items = <PopupMenuItem>[];
    for (int i = 0; i < optionsString!.length; i++) {
      items.add(menuItem(menuItemWidget(optionsString![i]), i));
    }
    return items;
  }

  List<PopupMenuItem> optionItems() {
    final items = <PopupMenuItem>[];
    for (int i = 0; i < options!.length; i++) {
      items.add(menuItem(options![i], i));
    }
    return items;
  }

  PopupMenuItem menuItem(Widget child, int value) {
    return PopupMenuItem<int>(child: child, value: value);
  }

  Widget menuItemWidget(String name) {
    return
      PrimaryMediumText(label: name,fontSize: 13,);

  }

  Widget defaultIcon() {
    return Padding(
      padding: padding ?? const EdgeInsetsDirectional.only(end: 15, top: 20, start: 40, bottom: 10),
      child: const AppIcon(
      icon: AppIcons.menu,
      ),
    );
  }
}

class BuildPopupMenuItemContent extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final String? iconPath;
  final double? iconSize;
  final bool? isDivider;
  const BuildPopupMenuItemContent({Key? key, required this.title, this.iconPath, this.isDivider = true, this.iconSize, this.titleStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            if (iconPath != null) ...[
              AppIcon(icon: iconPath!,  ),
              const SizedBox(
                width: 8,
              ),
            ],
            PrimaryMediumText(label: title,fontSize: 12,)

          ],
        ),
        if (isDivider!)
          const Padding(
            padding: EdgeInsets.only(top: 12.5),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
              height: 1,
            ),
          )
      ],
    );
  }
}