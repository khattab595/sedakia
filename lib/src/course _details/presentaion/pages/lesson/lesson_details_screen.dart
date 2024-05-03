import '../../../../../core/components/base_stateless_widget.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../domin/entities/course_details.dart';
import '../../widget/custom_lesson_file_item.dart';
import '../../widget/custom_pod_player.dart';

class LessonDetailsScreen extends BaseStatelessWidget {
  final Subjects subject;
  final String department;
  final Function({required int id, required int min})? attendingMin;

  LessonDetailsScreen(
      {Key? key, this.attendingMin, required this.subject, required this.department,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_) async {
        onPressed();
      },
      child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 225,
                    width: double.infinity,
                    child: PlayVideoFromNetwork(url: subject.link!,)),
                Padding(
                  padding: 20.paddingHoriz,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      16.ph,
                      MediumText(
                        label: department,
                        fontSize: 16,
                        labelColor: context.hintColor,
                      ),
                      SemiBoldText(
                        label: subject.name!,
                        fontSize: 20,
                      ),
                      8.ph,
                      MediumText(
                        label: subject.description!,
                        fontSize: 16,
                        labelColor: context.hintColor,
                      ),
                      20.ph,
                      SemiBoldText(
                        label: strings.lesson_files,
                        fontSize: 20,
                      ),
                      10.ph,
                      ...items.map((e) => CustomLessonFileItem())
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }

  List items = [1, 2, 3];

  onPressed() async {
    attendingMin!(id: subject.id!, min: 14);
  }
}