import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/home.dart';
import '../../bloc/home_bloc.dart';
import '../../widgets/search_home.dart';
import 'home_screen.dart';

class HomePage extends BaseBlocWidget<DataSuccess<Home>, HomeCubit> {
  HomePage({Key? key}) : super(key: key);


  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchHomeData();
  }
  //
  // @override
  // String? title(BuildContext context) => strings.home;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isDrawer: true,
      isNotifications: true,
      titleWidget: SearchHome(),
      body: buildConsumer(context),
    );
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<Home> state) {
    return HomeScreen(
      home: state.data!,
      onFavorite: (id) {
       return bloc.toggleFavorite(id);
      },
    );
  }
}
