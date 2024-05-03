import 'package:app/src/grades/presentation/widget/custom_grade_item.dart';
import '../../../../core/widgets/images/image_network.dart';
import '../../../main_index.dart';
import '../../domain/entities/grade.dart';

class GradesScreen extends BaseStatelessWidget {
  final List<Grade> grades;
  GradesScreen( {Key? key,required this.grades,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: 16.paddingHoriz,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...grades.map((e) => CustomGradeItem(
                  onPressed: () {
                    DialogsManager.showAlertDialog(context, SizedBox(
                        height: 440,
                        width: 330,
                        child: ImageNetwork(image:e.image ,fit: BoxFit.cover,)));

                  }, grade: e,
                ))
          ],
        ),
      ),
    ));
  }
}
