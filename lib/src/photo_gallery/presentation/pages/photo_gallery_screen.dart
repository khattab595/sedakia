import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/core/utils/navigator.dart';
import '../../../main_index.dart';
import '../widgets/photo_gallery_item.dart';

class PhotoGalleryScreen extends BaseStatelessWidget {
  PhotoGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      padding: 10.paddingHoriz,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: (){
              pushNamed(Routes.detailsPhotoGalleryPage);
            },
            child: PhotoGalleryItem());
      },
    );
  }
}
