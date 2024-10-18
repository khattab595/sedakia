
import 'package:app/core/components/base_widget_bloc.dart';
import 'package:app/src/settings/presentation/pages/privacy_policy/privacy_policy_screen.dart';

import '../../../../main_index.dart';
import '../../../domain/entities/about.dart';
import '../../bloc/about_logeste_bloc.dart';

class PrivacyPolicyPage extends BaseBlocWidget<UnInitState, AboutCubit> {
  PrivacyPolicyPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchAbout(getArguments(context));
  // }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return  PrivacyPolicyScreen(
      //   about: state.data!,
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.privacy_policy;
  }
}
