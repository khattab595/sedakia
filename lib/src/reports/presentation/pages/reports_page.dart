import 'package:app/core/widgets/tabview/tabbar_widget.dart';
import 'package:app/src/reports/presentation/pages/reports_screen.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/domain/entities/profile.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';

class ReportsPage extends BaseBlocWidget<UnInitState, ProfileBloc> {
  ReportsPage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return AppScaffold(
      backgroundColor: Colors.white,
      body: TabBarWidget(
        tabs: [
          TabItemModel(
            label: strings.enterprise,
            page: ReportsScreen(),
          ),
          TabItemModel(
            label: strings.point_sale,
            page: ReportsScreen(),
          ),
        ],
        onTap: (id) {},
      ),
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.reports;
  }
}
