import 'package:app/core/exceptions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  final void Function(bool) onToggle;
  final bool value;
  final String? title;
  final TextStyle? style;

  const CustomSwitch(
      {Key? key,
      required this.onToggle,
      this.value = false,
      this.title,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isActive = value;
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: 16.paddingHoriz,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (title != null) ...[
            Text(
              title ?? '',
              style: style ?? context.bodyMedium.copyWith(color: context.theme.switchTheme.thumbColor!.resolve({MaterialState.selected})),
            ),
          ],
          StatefulBuilder(builder: (context, setState) {
            return FlutterSwitch(
              width: 35,
              height: 20,
              padding: 5,
              toggleSize: 15,
              value: isActive,
              activeColor: context.backgroundColor.withOpacity(0.3),
              activeToggleColor: context.backgroundColor,
              inactiveColor: context.dividerColor,
              inactiveToggleColor: context.cardColor,
              onToggle: (value) {
                isActive = value;
                setState(() {
                  onToggle(!isActive);
                });
              },
            );
          }),
        ],
      ),
    );
  }
}
