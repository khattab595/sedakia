import 'package:app/core/widgets/texts/hint_texts.dart';
import '../../../../../core/widgets/images/image_network.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/slide.dart';

class AdvertisementScreen extends BaseStatelessWidget {
  final Slide slide;

  AdvertisementScreen({
    super.key,
    required this.slide,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: 16.paddingHoriz + 16.paddingTop,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ImageNetwork(
                height: 170,
                width: double.infinity,
                image: slide.images,
                fit: BoxFit.cover,
              ),
            ),
            16.ph,
            BoldText(
              label: slide.title!,
              fontSize: 20,
            ),
            8.ph,
            HintRegularText(
              label: slide.description!,
              fontSize: 18,
            ),
            20.ph,
          ],
        ),
      ),
    );
  }
}
