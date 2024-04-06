import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../../core/widgets/texts/texts.dart';
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
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title:
        BoldText(
          label: '${strings.welcome}, السعد ',
          fontSize: 20,
        ),
        centerTitle: false,
        actions: [
          AppIconButton(
            padding: 20.paddingEnd,
            icon: AppIcons.notifications,
            onPressed: () => Navigators.pushNamed(Routes.notifications),
          ),
        ],
      ),
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
