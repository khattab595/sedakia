
import 'package:app/src/profile/presentation/bloc/profile_bloc.dart';

import '../../../../../../../../core/components/base_widget_bloc.dart';
import '../../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../../main_index.dart';
import '../bloc/add_request_bloc.dart';
import 'add_request_screen.dart';

class AddRequestPage
    extends BaseBlocWidget<UnInitState, AuthCubit> {
  AddRequestPage({Key? key}) : super(key: key);


  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return AddRequestScreen(
      // courses: state.data ?? [],
      // onAddRequest: (params) => bloc.addRequest(),
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.vacation_request;
  }
}
