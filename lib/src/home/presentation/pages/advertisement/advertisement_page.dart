import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../bloc/home_bloc.dart';
import 'advertisement_screen.dart';

class AdvertisementPage extends BaseBlocWidget<UnInitState, HomeCubit> {
  AdvertisementPage({Key? key}) : super(key: key);



  @override
  Widget buildWidget(
      BuildContext context, UnInitState state) {
    return  AdvertisementScreen(slide: getArguments(context),);
  }
  @override
  String? title(BuildContext context) {
    return strings.advertisement_details;
  }
}
