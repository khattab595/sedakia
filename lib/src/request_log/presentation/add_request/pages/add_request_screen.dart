import '../../../domain/entities/course.dart';
import '../../../../main_index.dart';

class AddRequestScreen extends BaseStatelessWidget {
  final List<Course>? courses;
  final Function(dynamic) onAddRequest;

  AddRequestScreen(
      {Key? key, required this.courses, required this.onAddRequest})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(

      ),
    );
  }

}
