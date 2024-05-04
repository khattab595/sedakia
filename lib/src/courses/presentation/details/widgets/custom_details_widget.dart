
import '../../../../../core/widgets/images/image_network.dart';
import '../../../../../core/widgets/texts/black_texts.dart';
import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/course_details.dart';

class CustomDetailsWidget extends BaseStatelessWidget {
  final CourseDetails courseDetails;

  CustomDetailsWidget({
    super.key,
    required this.courseDetails,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.ph,
          BlackBoldText(
            label: strings.description,
            fontSize: 16,
          ),
          HintRegularText(
            label: courseDetails.description!,
            fontSize: 18,
          ),
          16.ph,
          BlackBoldText(
            label: strings.provider,
            fontSize: 16,
          ),
          Padding(
            padding: 10.paddingVert,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageNetworkCircle(
                  image: courseDetails.image ?? '',
                  size: 60,
                ),
                10.pw,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlackBoldText(
                        label: courseDetails.name ?? '',
                        fontSize: 14,
                      ),
                      5.ph,
                      HintMediumText(
                        label: courseDetails.department ?? '',
                        fontSize: 14,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
