import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../main_index.dart';

class RequestItem extends StatelessWidget {
  const RequestItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Decorations.baseDecorationRadius(),
      child: Column(
        children: [
          PrimaryMediumText(label: 'Request Title'),
          PrimaryRegularText(label: '+01120484981'),
          PrimaryBoldText(label: '25 Apr 2024'),
        ],
      ),
    );
  }
}
