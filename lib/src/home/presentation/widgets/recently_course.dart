import '../../../../core/widgets/images/image_network.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../../my_courses/domain/entities/course.dart';

class RecentlyCourse extends BaseStatelessWidget {
  final StreamStateInitial<Course?> recentlyCourseStream;
  final bool? hasNotProgress;
  final EdgeInsetsGeometry? padding;

  RecentlyCourse({
    super.key,
    this.padding,
    required this.recentlyCourseStream,
    this.hasNotProgress,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Course?>(
        stream: recentlyCourseStream.stream,
        builder: (context, snapshot) {
          Course myCourse = snapshot.data ?? Course();
          return snapshot.data?.id == null
              ? 0.ph
              : Column(
                children: [
                  BoldText(
                    label: strings.new_mes,
                    fontSize: 20,
                  ),
                  Padding(
                      padding: padding ?? 16.paddingVert,
                      child: Container(
                        decoration: Decorations.kDecorationBorderRadius(
                          radius: 20,
                          color: const Color(0xffEFF0F9),
                          borderColor: const Color(0xffEFF0F9),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ImageNetwork(
                              margin: 8.paddingAll,
                              width: 121,
                              radius: 20,
                              height: 90,
                              fit: BoxFit.cover,
                              image: myCourse.image,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  5.ph,
                                  MediumText(
                                    label: myCourse.department!,
                                    fontSize: 12,
                                  ),
                                  5.ph,
                                  BoldText(
                                    fontSize: 14,
                                    textAlign: TextAlign.start,
                                    label: myCourse.name!,
                                  ),
                                  5.ph,
                                  FittedBox(
                                    child: Row(
                                      children: [
                                        MediumText(
                                          label: myCourse.teacher!,
                                          fontSize: 15,
                                        ),
                                        10.pw,
                                        MediumText(
                                          label: myCourse.duration!,
                                          fontSize: 10,
                                          labelColor: context.primaryColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  hasNotProgress == true
                                      ? const SizedBox.shrink()
                                      : Padding(
                                          padding: 16.paddingEnd + 5.paddingVert,
                                          child: LinearProgressIndicator(
                                            value: double.parse(
                                                myCourse.percentage.toString()),
                                            color: primaryColor, //<-- SEE HERE
                                            backgroundColor: const Color(
                                                0xffDCDCDC), //<-- SEE HERE
                                          ),
                                        ),
                                ],
                              ),
                            ),
                            30.pw
                          ],
                        ),
                      ),
                    ),
                ],
              );
        });
  }
}
