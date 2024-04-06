import 'package:app/core/widgets/texts/texts.dart';

import '../../../../../core/utils/helper_methods.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';

class SupportScreen extends BaseStatelessWidget {
  final dynamic contactUs;
  final Function()? onContactUs;

  SupportScreen({super.key, required this.contactUs, this.onContactUs});

  TextEditingController subjectController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Padding(
        padding: 16.paddingAll,
        child: Column(
          children: [
            40.ph,
            CustomTextField(
              controller: subjectController,
              title: strings.email,
              keyboardType: TextInputType.emailAddress,
            ),
            CustomTextField(
              controller: subjectController,
              title: strings.mobile_number,
              keyboardType: TextInputType.phone,
            ),
            CustomTextField(
              controller: contentController,
              title: strings.notes,
              keyboardType: TextInputType.multiline,
              maxLines: 5,
            ),
            PrimaryButton(
              title: strings.submit,
              margin: 20.paddingTop,
              onPressed: () {
                onSelectedPressed();
              },
            ),
            40.ph,
            Row(
              children: [
                const Expanded(
                    child: Divider(
                  endIndent: 5,
                )),
                RegularHintText(label: strings.or),
                const Expanded(
                    child: Divider(
                  indent: 5,
                )),
              ],
            ),
            40.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppIconButton(
                  icon: AppIcons.phone_circle,
                  size: 50,
                  onPressed: () async {
                    await HelperMethods.launchURL('01141475581');
                  },
                ),
                AppIconButton(
                  icon: AppIcons.email_circle,
                  size: 50,
                  onPressed: () async {
                    await HelperMethods.launchURL('01141475581');
                  },
                ),
                AppIconButton(
                  icon: AppIcons.whats_app_circle,
                  size: 50,
                  onPressed: () async {
                    await HelperMethods.launchURL('01141475581');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  onSelectedPressed() async {
    if (_key.currentState!.validate()) {
      // onContactUs!(AddSupportParams(
      //   subject: subjectController.text,
      //   content: contentController.text,
      // ));
    }
  }
}
