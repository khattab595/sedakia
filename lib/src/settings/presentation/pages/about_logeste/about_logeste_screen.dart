
import 'package:app/core/widgets/texts/black_texts.dart';
import 'package:app/core/widgets/texts/hint_texts.dart';

import '../../../../main_index.dart';
import '../../../domain/entities/about.dart';

class AboutScreen extends StatelessWidget {
  final About about;
  const AboutScreen({Key? key, required this.about}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: 16.paddingHoriz + 20.paddingTop,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlackBoldText(
            label: about.name ?? '',
          ),
          10.ph,
          HintRegularText(label: about.description ?? '')

        ],
      ),
    );
  }
}
