


import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../bloc/electronic_rosary_bloc.dart';
import 'add_experiments_screen.dart';

class AddExperimentsPage extends BaseBlocWidget<UnInitState, ElectronicRosaryCubit> {
  AddExperimentsPage({Key? key}) : super(key: key);

  @override
  String? title(BuildContext context) {
    return "اضافة ذكر";
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return AddExperimentsScreen();
  }


}
