import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/core/widgets/buttons/outlined_button.dart';

import '../../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';

class DetailsMessageScreen extends BaseStatelessWidget {
  DetailsMessageScreen({super.key});
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController messageContentController = TextEditingController();
  TextEditingController inquiryCategoriesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        padding: 14.paddingTop + 10.paddingHoriz,
        child: Column(
          children: [
            Column(
              children: [
                DropDownField(
                  colorBorderSide: kGrayColor2,
                  iconColor: kPrimaryDark,
                  items: [],
                  borderRadius: 10,
                  onChanged: (value) {},
                ),
                24.ph,
                CustomTextField(
                  contentPadding: 350.paddingTop,
                  title: strings.message_content,
                  hintText: "Type your message...",
                  radius: 15,
                  controller: messageContentController,
                ),
                20.ph,
                PrimaryButton(
                  height: 50,
                  title: strings.send,
                  radius: 6,
                  onPressed: () {},
                  margin: 15.paddingHoriz,
                ),
                9.ph,
                SecondaryButton(
                  margin: 15.paddingHoriz,
                  radius: 6,
                  title: strings.cancel,
                  onPressed: () {},
                  borderColor: primaryColor,
                  textColor: kBlue00,
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
