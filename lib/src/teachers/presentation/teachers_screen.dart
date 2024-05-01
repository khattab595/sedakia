
import '../../../core/components/base_stateless_widget.dart';
import '../../home/domain/entities/home.dart';
import '../../home/presentation/widgets/custom_teacher_item.dart';
import '../../main_index.dart';

class TeachersScreen extends BaseStatelessWidget {
  final Home home;

  TeachersScreen({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      GridView.count(
          shrinkWrap: true,
          padding: 16.paddingHoriz,
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          childAspectRatio: (1 / 1.3),
          children: List.generate(20, (index) {
            return  CustomTeacherItem(width: double.infinity,height: 250,);
          })
      )
    );
  }


}
