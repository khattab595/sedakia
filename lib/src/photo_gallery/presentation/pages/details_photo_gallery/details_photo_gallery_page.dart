
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/resources/data_state.dart';
import '../../../../main_index.dart';
import '../../../../profile/presentation/bloc/profile_bloc.dart';
import 'details_photo_gallery_screen.dart';



class DetailsPhotoGalleryPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  DetailsPhotoGalleryPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => "صور وقفة عرفات";

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return DetailsPhotoGalleryScreen(

    );
  }

}

