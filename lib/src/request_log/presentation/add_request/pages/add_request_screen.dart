import 'package:app/core/widgets/text-field/custom_text_field.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../../core/widgets/buttons/selection_button_chip.dart';
import '../../../domain/entities/course.dart';
import '../../../../main_index.dart';
import '../widgets/filter_date_widget.dart';

class AddRequestScreen extends BaseStatelessWidget {
 // final List<Course>? courses;
  //final Function(dynamic) onAddRequest;

  AddRequestScreen(
      {Key? key,
      //  required this.courses, required this.onAddRequest
      })
      : super(key: key);
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController reasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            30.ph,
            Container(
              margin: 20.paddingHoriz,
              padding: 20.paddingTop+15.paddingHoriz,
              decoration: Decorations.kDecorationBorderRadius(borderColor: dividerColor,radius: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryMediumText(label: strings.set_your_absent_time,fontSize: 20,),
                  13.ph,
                  FilterDateWidget(onFilter: (date,app){},),
                  15.ph,
                  CustomTextField(hintText: strings.sick_leave,radius: 10,title:strings.reason ,),
                  15.ph,
                  CustomTextField(hintText:strings.no_file_chosen,radius: 10,prefixIconPath: AppIcons.desc,title: strings.attachments,),
                ],
              ),

            ),
            50.ph,
            PrimaryButton(title: strings.send_request,margin: 20.paddingHoriz,onPressed: (){},fontSize: 20,)

          ],
        ),
      ),
    );
  }

}
