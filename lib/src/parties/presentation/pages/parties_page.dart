import 'package:app/src/parties/presentation/pages/parties_screen.dart';
import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../bloc/parties_bloc.dart';

class PartiesPage extends BaseBlocWidget<UnInitState, PartiesCubit> {
  PartiesPage({Key? key}) : super(key: key);

  // @override
  // String? title(BuildContext context) {
  //   return strings.statistics;
  // }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return PartiesScreen();
  }
}
