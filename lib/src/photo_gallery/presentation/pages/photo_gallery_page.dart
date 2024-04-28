import '../../../../core/components/base_widget_bloc.dart';
import '../../../../core/widgets/tabview/dynamic_tab_bar_view.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import '../pages/photo_gallery_screen.dart';

class PhotoGalleryPage extends BaseBlocWidget<UnInitState, ProfileBloc> {
  PhotoGalleryPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.photo_gallery;

  @override
  Widget build(BuildContext context) {
    return mainFrame(
      body: DynamicTabBarView(
        onTap: (id) {},
        padding: 0.paddingAll,
        marginTabs: 10.paddingAll,
        tabs: [
          DynamicItem(id: 1, icon: AppIcons.iconOne),
          DynamicItem(
            id: 2,
            icon: AppIcons.iconTwo,
          ),
        ],
        // pageWidget: buildConsumer(context),
      ),
    );
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return PhotoGalleryScreen();
  }
}
