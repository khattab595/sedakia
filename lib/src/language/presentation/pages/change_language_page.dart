



import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import 'change_language_screen.dart';


class ChangeLanguagePage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  ChangeLanguagePage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.change_the_language;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return ChangeLanguageScreen(

    );
  }

}

