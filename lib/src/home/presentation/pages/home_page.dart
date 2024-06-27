import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../domain/entities/home_data.dart';
import '../bloc/home_bloc.dart';
import 'home_screen.dart';

class HomePage extends BaseBlocWidget<DataSuccess<HomeData>, HomeCubit> {
  HomePage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchInitialData();
  }

  @override
  Widget buildWidget(
      BuildContext context, DataSuccess<HomeData> state) {
    return HomeScreen(
      homeData: state.data!,
      onDownload: (url) {
        bloc.downloadFile(url);
      },
    );
  }
}
