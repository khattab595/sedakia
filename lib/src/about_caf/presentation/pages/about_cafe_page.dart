
import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import 'about_cafe_screen.dart';


class AboutCafPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  AboutCafPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.about_elcaf;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return AboutCafScreen(

    );
  }

}

