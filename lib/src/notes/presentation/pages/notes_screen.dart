import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/core/widgets/shapes/rounded_shape.dart';

import '../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../main_index.dart';

class NotesScreen extends BaseStatelessWidget {
  NotesScreen({super.key});
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController categoryController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ContainerShapeShadow(
              margin: 10.paddingHoriz + 20.paddingTop,
              child: Column(
                children: [
                  CustomTextField(
                    margin: 25.paddingTop + 5.paddingHoriz,
                    title: strings.category,
                    radius: 15,
                    controller: categoryController,
                  ),
                  44.ph,
                  CustomTextField(
                    contentPadding: 350.paddingTop,
                    title: strings.note,
                    margin: 5.paddingHoriz,
                    radius: 15,
                    controller: noteController,
                  ),
                  40.ph,
                  PrimaryButton(
                    height: 50,
                    title: strings.send,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
