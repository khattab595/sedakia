import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/text-field/custom_text_field.dart';
import 'package:app/src/electronic_rosary/presentation/pages/electronic_rosary/electronic_rosary_page.dart';
import '../../../../../core/widgets/texts/row_texts.dart';
import '../../../../main_index.dart';
import '../../../data/model/experiments_dto.dart';

class AddExperimentsScreen extends BaseStatelessWidget {
  AddExperimentsScreen({super.key});

  TextEditingController experimentNameController = TextEditingController();
   TextEditingController countController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formkey,
        child: Column(
          children: [
            CustomTextField(
              margin: 16.paddingHoriz + 20.paddingBottom,
              hintText: "اسم المجربة",
              controller: experimentNameController,
              keyboardType: TextInputType.name,
            ),
            CustomTextField(
              margin: 16.paddingHoriz,
              hintText: "اضافة العدد هنا",
              keyboardType: TextInputType.number,
              controller: countController,
        
            ),
            StatefulBuilder(
              builder: (context,setState) {
                return PrimaryButton(
                  margin: 50.paddingHoriz + 50.paddingVert,
                  title: "ابدأ",
                  onPressed: () {
                  if(formkey.currentState!.validate()){
                    ExperimentsDto data=     ExperimentsDto(count: int.parse(countController.text),experimentName:experimentNameController.text );
                    pushNamed(Routes.electronicRosaryPage,arguments:data );

                  }
                  },
                );
              }
            )
          ],
        ),
      ),
    );
  }
}
