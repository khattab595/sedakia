
import 'package:app/core/components/base_widget_bloc.dart';

import '../../../../main_index.dart';
import '../../bloc/about_logeste_bloc.dart';
import 'about_logeste_screen.dart';

class AboutLogestePage extends BaseBlocWidget<DataSuccess<String>, AboutLogesteCubit> {
  AboutLogestePage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchAboutLogeste();
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<String> state) {
    return AboutLogesteScreen(
      aboutLogeste: state.data ?? '',
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.about_logeste;
  }
}
