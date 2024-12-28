

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../data/model/experiments_dto.dart';
import '../../bloc/electronic_rosary_bloc.dart';
import 'electronic_rosary_screen.dart';

class ElectronicRosaryPage extends BaseBlocWidget<UnInitState, ElectronicRosaryCubit> {
  ElectronicRosaryPage({Key? key}) : super(key: key);

  @override
  String? title(BuildContext context) {
    return "السبحة";
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    ExperimentsDto data=     getArguments(context);

    return ElectronicRosaryScreen(data:data);
  }
}
