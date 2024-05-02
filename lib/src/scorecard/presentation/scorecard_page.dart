import 'package:app/src/scorecard/presentation/scorecard_screen.dart';

import '../../../../../../core/components/base_widget_bloc.dart';
import '../../home/presentation/bloc/home_bloc.dart';
import '../../main_index.dart';

class ScoreCardPage extends BaseBlocWidget<DataSuccess, HomeCubit> {
  ScoreCardPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchInitialData();
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess state) {
    return ScoreCardScreen(
      home: state.data!,
    );
  }
  @override
  String? title(BuildContext context) {
    return strings.show_test;
  }
}
