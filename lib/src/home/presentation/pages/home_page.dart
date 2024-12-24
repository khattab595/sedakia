import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../domain/entities/Summary_model.dart';
import '../bloc/home_bloc.dart';
import 'home_screen.dart';

class HomePage extends BaseBlocWidget<UnInitState, HomeCubit> {
  HomePage({Key? key}) : super(key: key);



  // @override
  // String? title(BuildContext context) {
  //   return strings.statistics;
  // }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return HomeScreen( );
  }
}
