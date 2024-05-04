import 'package:pod_player/pod_player.dart';

import '../../../../../core/widgets/texts/black_texts.dart';
import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../main_index.dart';
import '../../../data/models/attending_lesson_params.dart';
import '../../../domain/entities/course_details.dart';
import '../widgets/custom_lesson_file_item.dart';
import '../widgets/custom_pod_player.dart';

class LessonDetailsScreen extends BaseStatelessWidget {
  final Lesson subject;
  final Function(AttendingLessonParams) attendingMin;

  LessonDetailsScreen({
    Key? key,
    required this.attendingMin,
    required this.subject,
  }) : super(key: key);

  AttendingLessonParams params = AttendingLessonParams();
  PodPlayerController? controller;

  @override
  Widget build(BuildContext context) {
    initData();
    return
      WillPopScope(
      onWillPop: () async {
        onPop();
        return false;
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 225,
              width: double.infinity,
              child: PlayVideoFromNetwork(
                url: subject.link ?? '',
                controller: controller,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  HintMediumText(label: subject.department ?? ''),
                  SizedBox(height: 5),
                  BlackBoldText(label: subject.name ?? ''),
                  SizedBox(height: 8),
                  HintRegularText(
                    label: subject.description ?? '',
                    fontSize: 16,
                  ),
                  SizedBox(height: 20),
                  BlackBoldText(
                    label: strings.lesson_files,
                    fontSize: 16,
                  ),
                  SizedBox(height: 10),
                  CustomLessonFileItem(lesson: subject),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onAttending() async {
    params = AttendingLessonParams(
      subjectId: subject.id!,
      attendingMin: controller?.currentVideoPosition?.inMinutes,
    );
    attendingMin(params);
  }

  void initData() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(subject.link ?? ''),
    )..initialise();
    controller?.videoSeekTo(subject.duration);
    params = AttendingLessonParams(
      subjectId: subject.id ?? 0,
      attendingMin: subject.m?.toInt(),
    );
  }

  void onPop() {
    controller?.dispose();
    onAttending();
    pop();
  }

  @override
  void dispose() {
    controller?.dispose();
    // super.dispose();
  }
}
