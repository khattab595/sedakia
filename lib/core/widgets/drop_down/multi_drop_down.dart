import 'package:animated_custom_dropdown/custom_dropdown.dart';
import '../../../src/main_index.dart';
import '../texts/black_texts.dart';
import '../texts/primary_texts.dart';
import 'drop_down.dart';

class DropDownFieldMulti extends BaseStatelessWidget {
  final List<DropDownItem> items;
  final String? title;
  final String? hint;
  final List<String>? value;
  final TextStyle? texStyle;
  final Widget? prefixIcon;
  final Widget? iconWidget;
  final void Function(List<DropDownItem>?)? onChanged;
  final bool isValidator;
  final bool isIconShow;
  final String? Function(dynamic)? validator;
  final TextStyle? style;
  final double? radius;
  final Color? borderColor;
  final Color? titleColor;
  final double? width;
  final Offset? offset;
  final double? fontSize;
  final EdgeInsetsGeometry? contentPadding;
  bool? isSearch;

  DropDownFieldMulti(
      {Key? key,
        required this.items,
        this.title,
        this.hint,
        this.isSearch,
        this.onChanged,
        this.prefixIcon,
        this.texStyle,
        this.value,
        this.iconWidget,
        this.isValidator = true,
        this.isIconShow = true,
        this.validator,
        this.style,
        this.radius,
        this.borderColor,
        this.titleColor,
        this.width,
        this.offset,
        this.fontSize,
        this.contentPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double radius = this.radius ?? 12;
    Color borderColor = this.borderColor ?? Colors.transparent;
    TextEditingController controller = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          PrimaryMediumText(
            label: title!,
            fontSize: 16,
            labelColor: titleColor,
          ),
          5.ph
        ],
        CustomDropdown<DropDownItem>.multiSelect(
          onListChanged: (p0) {
            onChanged!(p0);
          },
        listItemPadding: const EdgeInsets.all(5),
          closedHeaderPadding: const EdgeInsets.all(10),
          expandedHeaderPadding: const EdgeInsets.all(5),
          headerListBuilder: (context, selectedItems, enabled) {
            return SizedBox(
              height: 30,width: double.infinity,
              child: ListView.builder(
                  itemCount: selectedItems.length,

                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: 5.paddingStart,
                    child: Row(
                      children: [
                        BlackMediumText(
                          label: selectedItems[index].title.toString(),
                        ),
                        5.pw,
                        Container(
                          color: primaryColor,
                          width: 7,
                          height: 3,
                        ),
                      ],
                    ),
                  )),
            );
          },
          initialItems: getInitialValue(),
          listItemBuilder: (context, item, isSelected, onItemSelect) {
            return BlackMediumText(
              label: item.title.toString(),
            );
          },
          decoration: CustomDropdownDecoration(
              prefixIcon: prefixIcon,
              closedFillColor: const Color(0xffF2F2F2),
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 30,
                color: hintBoldStyle.color,
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up,
                size: 30,
                color: cardColor,
              ),
              closedShadow: [
                const BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.white,
                  blurRadius: 1,
                ),
              ],
              closedBorderRadius: BorderRadius.circular(12),
              closedErrorBorderRadius: BorderRadius.circular(12),
              expandedBorderRadius: BorderRadius.circular(12),
            //  hintStyle: hintRegularStyle.copyWith(color: Colors.grey),
              expandedFillColor: Colors.white),
          hintText: hint,
          items: items,
          disabledDecoration: CustomDropdownDisabledDecoration(
            border: Border.all(color: whiteTextColor, width: 0,),
            fillColor: context.theme.inputDecorationTheme.fillColor,
            borderRadius: BorderRadius.circular(12),

          ),
        ),
        5.ph,
      ],
    );
  }

  getInitialValue() {
    if (value != null && value!.isNotEmpty && items.isNotEmpty) {
      List<DropDownItem> data = [];
      for (int i = 0; i < items.length; i++) {
        for (int x = 0; x < value!.length; x++) {
          if (items[i].id == value?[x]) {
            data.add(items[i]);
          }
        }
      }
      return data;
    } else {
      return null;
    }
  }
}

// class DropDownItem {
//   final String? id;
//   final String? title;
//   final String? value;
//   final IconData? icon;
//   final Widget? child;
//
//   const DropDownItem({this.id, this.title, this.value, this.icon, this.child});
// }