
import 'package:app/src/profile/presentation/bloc/profile_bloc.dart';

import '../../../../../../../../core/components/base_widget_bloc.dart';
import '../../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../../main_index.dart';
import '../bloc/add_request_bloc.dart';
import 'add_request_screen.dart';

class AddRequestPage
    extends BaseBlocWidget<DoubleDataSuccess, AddRequestCubit> {
  AddRequestPage({Key? key}) : super(key: key);


  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchLeaveTypes();
  }

  @override
  Widget buildWidget(BuildContext context, DoubleDataSuccess state) {
    return AddRequestScreen(
      leaveTypes: state.data1,
      leaveSubTypes: state.data2,
      onAddRequest: (params) {
        bloc.addRequest(params);
      },
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.my_requests;
  }
}
