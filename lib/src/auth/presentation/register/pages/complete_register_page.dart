import 'package:app/core/widgets/images/logo.dart';
import 'package:app/core/widgets/texts/black_texts.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../main_index.dart';
import '../../../data/models/complete_registration_params.dart';
import '../../../data/models/register_params.dart';
import '../../bloc/auth_bloc.dart';
import '../bloc/complete_register_bloc.dart';
import '../widgets/stepper_lines.dart';
import 'complete_screen.dart';
import 'enter_pin_code_screen.dart';
import 'register_screen.dart';

// ignore: must_be_immutable
class CompleteRegisterPage extends BaseBlocWidget<
    DataSuccess<List<DropDownItem>>, CompleteRegisterCubit> {
  CompleteRegisterPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchAcademicLevels();
  }

  @override
  Widget buildWidget(
      BuildContext context, DataSuccess<List<DropDownItem>> state) {
    return CompleteScreen(
      items: state.data ?? [],
      stageLevelsStream: bloc.stageLevelsStream,
      onFetchStageLevels: (String academicLevelId) {
        bloc.fetchStageLevels(academicLevelId);
      },
      onRegister: (CompleteRegistrationParams params) {
        bloc.completeRegistration(params);
      },
    );
  }

  @override
  void onSuccessDismissed() {
    Navigators.pushNamedAndRemoveUntil(Routes.navigationPages);
  }
}
