import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/home.dart';
import '../../bloc/home_bloc.dart';
import 'home_screen.dart';

class HomePage extends BaseBlocWidget<DataSuccess<Home>, HomeCubit> {
  HomePage({Key? key}) : super(key: key);


  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchHomeData();
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess<Home> state) {
    return HomeScreen(
      home: state.data!,
    );
  }
}
