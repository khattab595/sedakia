
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../home/presentation/widgets/personal_informatin_widget.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/course_details.dart';

class CustomDetailsWidget extends BaseStatelessWidget {
  final CourseDetails courseDetails;
   CustomDetailsWidget( {super.key,required this.courseDetails,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.ph,
           SemiBoldText(
            label:strings.description,
            fontSize: 16,
          ),
          8.ph,
          MediumText(
            label:courseDetails.description!,
            fontSize: 18,
            labelColor: context.hintColor,
          ),
          16.ph,
           SemiBoldText(
            label:strings.provider,
            fontSize: 16,
          ),
          10.ph,
          PersonalInformationWidget(),
          // 47.ph,
          // PrimaryButton(
          //   title: strings.subscription,
          //   onPressed: (){
          //     showModalBottomSheet(
          //       backgroundColor:Colors.white,
          //       context: context,
          //       isScrollControlled: true,
          //       builder: (context) =>   CustomBottomSheet(),
          //     );
          //
          //   },
          // ),

        ],
      ),
    );
  }
}
