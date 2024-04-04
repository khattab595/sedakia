
import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../domain/entities/social_media.dart';
import '../bloc/community_bloc.dart';
import 'community_screen.dart';

class CommunityPage extends BaseBlocWidget<DataSuccess<List<SocialMedia>>, CommunityCubit> {
   CommunityPage({Key? key}) : super(key: key);


   @override
   void loadInitialData(BuildContext context) {
     bloc.fetchSocialMediaData();
   }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<SocialMedia>> state) {
   return CommunityScreen(
     socialMedia: state.data!,
   );
  }

  @override
  String? title(BuildContext context) {
    return strings.community;
  }
}
