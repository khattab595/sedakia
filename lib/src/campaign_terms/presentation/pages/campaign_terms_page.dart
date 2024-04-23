

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import 'campaign_terms_screen.dart';


class CampaignTermsPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  CampaignTermsPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.campaign_terms;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return CampaignTermsScreen(

    );
  }

}

