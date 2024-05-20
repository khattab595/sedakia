import '../../../../core/utils/navigator.dart';
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
