import 'package:app/core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/Setting_model.dart';
import '../../bloc/about_logeste_bloc.dart';
import 'about_logeste_screen.dart';

class AboutPage extends BaseBlocWidget<DataSuccess<SettingModel>, AboutCubit> {
  AboutPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchSetting();
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<SettingModel> state) {
    return AboutScreen(
      data: state.data!,
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.about_us;
  }
}
