


import '../../../../../../../../core/components/base_widget_bloc.dart';
import '../../../../core/resources/data_state.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../main_index.dart';
import 'language_screen.dart';


class LanguagePage
    extends BaseBlocWidget<UnInitState, AuthCubit> {
  LanguagePage({Key? key}) : super(key: key);


  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return LanguageScreen(
      // courses: state.data ?? [],
      // onAddRequest: (params) => bloc.addRequest(),
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.language;
  }
}
