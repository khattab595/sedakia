import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/buttons/label_button.dart';
import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../main_index.dart';

class Counter extends BaseStatelessWidget {
   Counter({super.key});
   int value = 1;
  @override
  Widget build(BuildContext context) {
    return  StatefulBuilder(
        builder: (context, setState) {
          return ContainerShapeShadow(
            margin: 24.paddingHoriz,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: 5.paddingTop + 5.paddingEnd,
                      child: LabelButton(
                        title: strings.remove,
                        onTap: () {
                          value--;
                          setState(() {});
                        },
                        color: errorColor,
                        fontSize: 15,

                      ),
                    ),
                  ],
                ),
                40.ph,
                CircleAvatar(
                  maxRadius: 100,
                  backgroundColor: primaryColor,
                  child: Text("$value"),
                ),
                90.ph,
                PrimaryButton(
                  title: strings.press_here,
                  onPressed: () {
                    value++;
                    setState(() {});
                  },
                  height: 50,
                )
              ],
            ),
          );
        });
  }
}
