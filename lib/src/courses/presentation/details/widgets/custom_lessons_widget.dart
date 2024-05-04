import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/course_details.dart';
import 'custom_lesson_item.dart';

class CustomLessonsWidget extends BaseStatelessWidget {
  final List<Lesson> subjects;

  CustomLessonsWidget({
    super.key,
    required this.subjects,
  });

  @override
  Widget build(BuildContext context) {
    return subjects.isEmpty
        ? Center(
            child: HintRegularText(
              label: strings.not_data_found,
              fontSize: 18,
            ),
          )
        :
      ListView.builder(
      itemCount: subjects.length,
      itemBuilder: (context, index) {
        return CustomLessonItem(subject: subjects[index]);
      },
    );
  }
}
