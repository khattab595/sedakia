import '../../../../../core/components/base_widget_bloc.dart';
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

  // @override
  // Widget build(BuildContext context) {
  //   return mainFrame(
  //     body: Stack(
  //       children: [
  //         Container(
  //           height: 100,
  //           width: 500,
  //           decoration:
  //               Decorations.shapeDecorationShadow(radius: 0, color: cardColor),
  //         ),
  //         buildConsumer(context),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<Home> state) {
    return HomeScreen(
      home: state.data!,
    );
  }
}
