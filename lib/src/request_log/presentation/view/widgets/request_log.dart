
import '../../../../main_index.dart';
import '../../../domain/entities/course.dart';

class RequestLogItem extends BaseStatelessWidget {
  final Course log;
   RequestLogItem({super.key, required this.log });


  @override
  Widget build(BuildContext context) {
    print('myCourse.percentage: ${log.percentage}');
    return  Container(
      decoration:Decorations.kDecorationBorderRadius(radius: 20,
        color: const Color(0xffEFF0F9),
        borderColor:  const Color(0xffEFF0F9),
      ),
    );
  }
}
