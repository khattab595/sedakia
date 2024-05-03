import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class CustomDialogBody extends BaseStatelessWidget {
  final VoidCallback onLogout;

  CustomDialogBody( {super.key,required this.onLogout,});

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
              label:strings.sign_out,
              fontSize: 20,
              labelColor: Colors.red,
            ),
            8.ph,
            MediumText(
              label:strings.sign_out_mes,
              fontSize: 14,
              labelColor: Colors.grey,
            ),
            24.ph,
            PrimaryButton(
              height: 35,
              title: strings.sign_out,
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
