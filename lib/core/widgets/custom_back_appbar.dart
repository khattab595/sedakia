import '../../src/main_index.dart';
import 'icons/icon_text.dart';

class CustomBackAppBar extends BaseStatelessWidget {
   CustomBackAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child:  Icon(Icons.arrow_back_ios,size: 20,color: AppColors.primaryLight));
  }
}
