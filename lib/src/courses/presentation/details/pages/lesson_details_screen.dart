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

  LessonDetailsScreen(
      {Key? key, required this.attendingMin, required this.subject})
      : super(key: key);

  AttendingLessonParams params = AttendingLessonParams();
  PodPlayerController? controller;
  @override
  Widget build(BuildContext context) {
    initData();
    return PopScope(
      canPop: false,
      onPopInvoked: (_) async {
        onPop();
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 225,
                width: double.infinity,
                child: PlayVideoFromNetwork(url: subject.link!,
                  controller: controller,
                )),
            Padding(
              padding: 16.paddingHoriz,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  5.ph,
                  HintMediumText(
                    label: subject.department ?? '',
                    fontSize: 16,
                    labelColor: context.hintColor,
                  ),
                  5.ph,
                  BlackBoldText(
                    label: subject.name ?? '',
                    fontSize: 20,
                  ),
                  8.ph,
                  HintRegularText(
                    label: subject.description ?? '',
                    fontSize: 16,
                  ),
                  20.ph,
                  BlackBoldText(
                    label: strings.lesson_files,
                    fontSize: 16,
                  ),
                  10.ph,
                  ...items.map((e) => CustomLessonFileItem(

                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List items = [1, 2, 3];

  onAttending() async {
    params = AttendingLessonParams(
        subjectId: subject.id!,
        attendingMin: controller?.currentVideoPosition.inMinutes);
     attendingMin(params);
  }

  initData() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(
          subject.link ?? ''
      ),
    )..initialise();
    controller?.videoSeekTo(subject.duration);
    params = AttendingLessonParams(subjectId: subject.id ?? 0, attendingMin: subject.m?.toInt());
  }

  onPop() {
    controller?.dispose();
    onAttending();
    pop();
  }
}