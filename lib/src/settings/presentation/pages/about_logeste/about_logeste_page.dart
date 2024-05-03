
import 'package:app/core/components/base_widget_bloc.dart';

import '../../../../main_index.dart';
import '../../../domain/entities/about.dart';
import '../../bloc/about_logeste_bloc.dart';
import 'about_logeste_screen.dart';

class AboutPage extends BaseBlocWidget<DataSuccess<About>, AboutCubit> {
  AboutPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchAbout(getArguments(context));
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<About> state) {
    return AboutScreen(
      about: state.data!,
    );
  }

  @override
  String? title(BuildContext context) {
    return getArguments(context) == AboutType.aboutUs ? strings.about_us : strings.terms_conditions;
  }
}
