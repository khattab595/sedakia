import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../main_index.dart';

class LanguageScreen extends BaseStatelessWidget {
   LanguageScreen({super.key});
   bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: 20.paddingHoriz+20.paddingTop,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.ph,
          Row(
            children: [
              10.pw,
              PrimaryBoldText(label: strings.english,),
              const Spacer(),
              StatefulBuilder(builder: (context, setState) {
                return Checkbox(
                  value: isSelected,
                  activeColor: primaryColor,
                  side: BorderSide(
                    color: context.primaryColor,
                    width: 1,
                  ),
                  visualDensity: VisualDensity.compact,
                  onChanged: (value) {
                    setState(() {
                      isSelected = value!;
                    });
                  },
                );
              }),

            ],
          ),
          15.ph,
          const Divider(),
          15.ph,
          Row(
            children: [
              10.pw,
              PrimaryBoldText(label: strings.arabic,),
              const Spacer(),
              StatefulBuilder(builder: (context, setState) {
                return Checkbox(
                  value: isSelected,
                  activeColor: primaryColor,
                  side: BorderSide(
                    color: context.primaryColor,
                    width: 1,
                  ),
                  visualDensity: VisualDensity.compact,
                  onChanged: (value) {
                    setState(() {
                      isSelected = value!;
                    });
                  },
                );
              }),

            ],
          ),

        ],
      ),
    );
  }
}
