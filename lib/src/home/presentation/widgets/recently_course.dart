import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/images/image_network.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../courses/domain/entities/course.dart';
import '../../../main_index.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BoldText(
                    label: strings.new_mes,
                    fontSize: 20,
                  ),
                  Padding(
                      padding: padding ?? 16.paddingVert,
                      child: InkWell(
                        onTap: (){
                          pushNamed(Routes.courseDetailsPage,arguments: myCourse.id);
                        },
                        child: Container(
                          height: 98,
                          decoration: Decorations.kDecorationBorderRadius(
                            radius: 20,
                            color: const Color(0xffEFF0F9),
                            borderColor: const Color(0xffEFF0F9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: 8.paddingAll,
                                child: ImageNetwork(
                                  width: 121,
                                  radius: 12,
                                  height: 82,
                                  fit: BoxFit.cover,
                                  image: myCourse.image,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: 12.5.paddingVert+8.paddingEnd,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      MediumText(
                                        label: myCourse.department!,
                                        fontSize: 12,
                                      ),
                                      Flexible(
                                        child: BoldText(
                                          fontSize: 14,
                                          textAlign: TextAlign.start,
                                          label: myCourse.name!,
                                        ),
                                      ),
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            MediumText(
                                              label: myCourse.teacher!,
                                              fontSize: 10,
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
                              ),
                              30.pw
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              );
        });
  }
}
