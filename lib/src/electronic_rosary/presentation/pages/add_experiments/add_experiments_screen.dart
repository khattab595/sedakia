import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/text-field/custom_text_field.dart';
import '../../../../../core/widgets/texts/row_texts.dart';
import '../../../../main_index.dart';
import '../../../data/model/experiments_dto.dart';

class AddExperimentsScreen extends BaseStatelessWidget {
  AddExperimentsScreen({super.key});
  List<ExperimentsDto> experimentsDto = [];
  TextEditingController experimentNameController = TextEditingController();
  TextEditingController addExperimentController = TextEditingController();
  TextEditingController countController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextField(
            margin: 16.paddingHoriz + 20.paddingBottom,
            hintText: "اسم المجربة",
            controller: experimentNameController,
          ),
          CustomTextField(
            margin: 16.paddingHoriz + 20.paddingBottom,
            hintText: "اضافة الذكر هنا",
            controller: addExperimentController,
            maxLines: 5,
      
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
                title: "حفظ",
                onPressed: () {
                  print("yjiuity${experimentNameController.text}");
                     experimentsDto.add(
                      ExperimentsDto(
                      experimentName: experimentNameController.text,
                      addExperiment: addExperimentController.text,
                      count: countController.text));
                     setState(() {});
               //   pushNamed(Routes.experimentsPage,arguments: experimentsDto);

                },
              );
            }
          )
        ],
      ),
    );
  }
}
