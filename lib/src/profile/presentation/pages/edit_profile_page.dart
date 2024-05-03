

import '../../../../core/components/base_widget_bloc.dart';
import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';
import '../bloc/profile_bloc.dart';
import 'edit_profile_screen.dart';

class EditProfilePage extends BaseBlocWidget<DoubleDataSuccess, ProfileBloc>{
  EditProfilePage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchEditProfileData();
  }

  @override
  Widget buildWidget(BuildContext context, DoubleDataSuccess state) {
    return EditProfileScreen(
      profile: state.data1 ?? Profile(),
      items: state.data2 ?? [],
      stageLevelsStream: bloc.stageLevelsStream,
      onFetchStageLevels: (String academicLevelId) {
        bloc.fetchStageLevels(academicLevelId);
      },
      onEdit: (params) => bloc.editProfileData(params),
      onEditImage: (fil) => bloc.editProfileImage(fil),
    );
  }

  @override
  String? title(BuildContext context) => strings.edit_account;
  @override
  void onSuccessDismissed() {
    Navigator.pop(context!, true);
  }
}

