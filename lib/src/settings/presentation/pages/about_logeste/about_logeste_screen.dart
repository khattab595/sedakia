import 'package:app/core/widgets/texts/black_texts.dart';
import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/src/settings/presentation/widgets/about_logeste_item.dart';

import '../../../../main_index.dart';
import '../../../domain/entities/about.dart';

class AboutScreen extends StatelessWidget {
  // final About about;
  const AboutScreen({
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
            title: 'هذا التطبيق',
            subTitle:'وتشمل هذه الاتفاقية جميع المشتركين في خدمة Whats Loop وموقعها الإلكتروني، الذي تملكه وتديره شركة الخوادم الرقمية للاتصالات وتقنية المعلومات.',
          ),
          20.ph,
          AboutLogesteItem(
            title:"سمات",
            subTitle: "تشمل هذه الاتفاقية جميع المشتركين في خدمة Whats خدمة الحلقة وموقعها الإلكتروني تملكها وتديرها شركة الخوادم الرقمية للاتصالات شركة تكنولوجيا المعلومات.",
          ),
          20.ph,
          AboutLogesteItem(
            title: "خدمات",
            subTitle: "تشمل هذه الاتفاقية جميع المشتركين في خدمة Whats خدمة الحلقة وموقعها الإلكتروني تملكها وتديرها شركة الخوادم الرقمية للاتصالات شركة تكنولوجيا المعلومات.",
          )
        ],
      )
    );
  }
}
