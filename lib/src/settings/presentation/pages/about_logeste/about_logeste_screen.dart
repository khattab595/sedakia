import 'package:app/core/widgets/texts/black_texts.dart';
import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/src/settings/presentation/widgets/about_logeste_item.dart';

import '../../../../main_index.dart';
import '../../../domain/entities/about.dart';

class AboutScreen extends BaseStatelessWidget {
  // final About about;
  AboutScreen({
    Key? key,
    //  required this.about
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: 20.paddingAll,
        child: Column(
          children: [
            AboutLogesteItem(
              title: strings.this_app,
              subTitle: strings.desc_about,
            ),
            20.ph,
            AboutLogesteItem(
              title: strings.features,
              subTitle: strings.desc_about,
            ),
            20.ph,
            AboutLogesteItem(
              title: strings.services,
              subTitle: strings.desc_about,
            )
          ],
        ));
  }
}
