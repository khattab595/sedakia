

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import 'digital_identity_screen.dart';


class DigitalIdentityPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  DigitalIdentityPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.digital_identity;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return DigitalIdentityScreen(

    );
  }

}

