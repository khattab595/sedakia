 import 'package:app/src/main_index.dart';
import '../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../core/widgets/texts/texts.dart';


class ReportsScreen extends BaseStatelessWidget {

var searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:   EdgeInsets.all(20),
      child: Column(
        children: [
        //   CustomTextField(
        //     controller: searchController,
        //     hintText: strings.search_by_history,
        // hintStyle:titleSmall.copyWith(fontSize: 15,color:Colors.black.withOpacity(.7) ),
        //     suffixIcon: AppIcon( padding:10.paddingAll ,icon: AppIcons.calender1,),
        //   ),

          Row(
            children: [

            ],
          )

        ],
      ),
    );
  }

  // Widget numberWidget(){
  //   return
  // }

}
