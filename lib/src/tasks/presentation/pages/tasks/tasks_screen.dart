import 'package:app/core/widgets/icons/icon_text.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../../core/widgets/texts/row_texts.dart';
import '../../../../main_index.dart';

class TasksScreen extends BaseStatelessWidget {
  TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
              child: Container(
                  decoration: Decorations.kDecorationBorderRadius(
                      radius: 8, borderColor: primaryColor),
                  margin: 16.paddingHoriz + 10.paddingVert,
                  padding: 16.paddingHoriz + 15.paddingVert,
                  child: Row(
                    children: [
                      PrimaryMediumText(label: "الله اكبر"),
                      const Spacer(),
                      InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.edit,
                            size: 18,
                          )),
                      15.pw,
                      InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.delete,
                            size: 18,
                          )),
                    ],
                  )));
        });
  }
}
