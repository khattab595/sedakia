import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../bloc/more_bloc.dart';
import 'more_screen.dart';

class MorePage extends BaseBlocWidget<UnInitState, ProfileBloc> {
  MorePage({Key? key}) : super(key: key);
  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) {
    return strings.more;
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return MoreScreen();
  }






}
