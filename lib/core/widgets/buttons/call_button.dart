import 'package:flutter/material.dart';
import 'package:app/core/widgets/buttons/app_icon_button.dart';

import '../../assets/app_icons.dart';
import '../../utils/helper_methods.dart';

class CallButton extends StatelessWidget {
  final String phone;
  final double? size;
  const CallButton({Key? key, required this.phone, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppIconButton(
      icon: AppIcons.phone_bold,
      color: Theme.of(context).colorScheme.secondaryContainer,
      size: size ?? 35,
      onPressed: () {
        HelperMethods.launchCallPhone(phone);
      },
    );
  }
}
