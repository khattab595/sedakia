import 'package:app/core/widgets/texts/black_texts.dart';
import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/src/settings/presentation/widgets/about_logeste_item.dart';

import '../../../../main_index.dart';
import '../../../domain/entities/Setting_model.dart';
import '../../../domain/entities/about.dart';

class AboutScreen extends BaseStatelessWidget {
  final SettingModel data;
  AboutScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: 20.paddingAll,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AboutLogesteItem(
                title: strings.this_app,
                subTitle: data.thisApp??"",
              ),
              20.ph,
              AboutLogesteItem(
                title: strings.features,
                subTitle: data.features??"",
              ),
              20.ph,
              AboutLogesteItem(
                title: strings.services,
                subTitle: data.services??"",
              )
            ],
          ),
        ));
  }
}
