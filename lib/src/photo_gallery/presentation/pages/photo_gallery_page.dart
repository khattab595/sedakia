
import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import '../pages/photo_gallery_screen.dart';


class PhotoGalleryPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  PhotoGalleryPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.photo_gallery;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return PhotoGalleryScreen(

    );
  }

}

