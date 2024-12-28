import 'package:app/core/utils/navigator.dart';
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../data/model/experiments_dto.dart';
import '../../bloc/electronic_rosary_bloc.dart';
import 'experiments_screen.dart';

class ExperimentsPage extends BaseBlocWidget<UnInitState,
    ElectronicRosaryCubit> {
  ExperimentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "المجربات",
          style: theme.appBarTheme.titleTextStyle?.copyWith(
              color: AppColors.primaryLight, fontWeight: FontWeight.w600),
        ),
      ),
      bottomNavigationBar: PrimaryButton(
        title: "اضافة ذكر",
        onPressed: () {
          pushNamed(Routes.addExperimentsPage);
        },
        radius: 10,
        margin: 30.paddingHoriz + 20.paddingVert,
      ),
      body: buildConsumer(context),
    );
  }

  @override
  Widget buildWidget(
      BuildContext context, UnInitState state) {
    return ExperimentsScreen(

    );
  }
}
