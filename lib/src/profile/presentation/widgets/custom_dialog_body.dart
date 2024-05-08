import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class CustomDialogBody extends BaseStatelessWidget {
  final VoidCallback onLogout;
  final String? title;
  final String? description;

  CustomDialogBody( {super.key,required this.onLogout, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 353,
      child: Padding(
        padding: 16.paddingTop,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BoldText(
              label: title ?? strings.sign_out,
              fontSize: 20,
              labelColor: Colors.red,
            ),
            8.ph,
            MediumText(
              label: description ?? strings.sign_out_mes,
              fontSize: 14,
            ),
            24.ph,
            PrimaryButton(
              height: 35,
              title: title ?? strings.sign_out,
              onPressed: onLogout,
            ),
            PrimaryButton(
              height: 40,
              backgroundColor: const Color(0xffDCDCDC),
              style: const TextStyle(color: Colors.grey
              ),
              title: strings.cancel,
              onPressed: (){
                pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
