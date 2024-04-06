
import 'package:app/core/resources/data_state.dart';
import 'package:app/src/settings/presentation/support/pages/support_screen.dart';
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../bloc/support_bloc.dart';


class SupportPage extends BaseBlocWidget<UnInitState, SupportCubit> {
  SupportPage({Key? key}) : super(key: key);



  @override
  String? title(BuildContext context) => strings.technical_support;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return SupportScreen(
      contactUs: state.data ?? {},
      onContactUs: () {
        // bloc.addSupport(params);
      },
    );
  }

  @override
  void onSuccessDismissed() {
    // pushNamed(Routes.navigationPages);
  }

}
