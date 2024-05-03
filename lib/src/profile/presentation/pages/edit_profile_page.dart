

import '../../../../core/components/base_widget_bloc.dart';
import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';
import '../bloc/profile_bloc.dart';
import 'edit_profile_screen.dart';

class EditProfilePage extends BaseBlocWidget<DataSuccess<List<DropDownItem>>, ProfileBloc>{
  EditProfilePage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchProfileData();
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<DropDownItem>> state) {
    Profile profile = getArguments(context);
    return EditProfileScreen(
      profile: profile,
      items: bloc.stageLevelsStream.data ?? [],
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

