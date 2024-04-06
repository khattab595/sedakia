import 'dart:ui';

import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../main_index.dart';
import '../pages/search_screen.dart';

///  Created by harbey on 9/5/2023.
class SearchHome extends BaseStatelessWidget {
   SearchHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: View.of(context).padding.top.paddingTop,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${strings.welcome}, السعد ',
            style: bodyLarge.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${strings.welcome}, السعد ',
            style: bodyLarge.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${strings.welcome}, السعد ',
            style: bodyLarge.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          AppIconButton(
            icon: AppIcons.notifications,
            size: 20,
            onPressed: () => Navigators.pushNamed(Routes.notifications),
          ),
        ],
      ),
    );
  }
}
