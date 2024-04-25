import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../../core/utils/navigator.dart';
import '../../../../main_index.dart';
import '../../widgets/more_photo_gallery_item.dart';

class MorePhotoGalleryScreen extends BaseStatelessWidget {
  MorePhotoGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCafColor.withOpacity(0.1),
      child: GridView.builder(
        itemCount: 8,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
          childAspectRatio: 1,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                pushNamed(Routes.detailsPhotoGalleryPage);
              },
              child: MorePhotoGalleryItem());
        },
      ),
    );
  }
}
