
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/resources/data_state.dart';
import '../../../../main_index.dart';
import '../../../../profile/presentation/bloc/profile_bloc.dart';
import 'more_photo_gallery_screen.dart';



class MorePhotoGalleryPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  MorePhotoGalleryPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.photo_gallery;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return MorePhotoGalleryScreen(

    );
  }

}

