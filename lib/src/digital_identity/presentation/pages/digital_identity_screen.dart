import 'package:app/core/components/base_stateless_widget.dart';
import '../../../main_index.dart';
import '../widgets/custom_title.dart';
import '../widgets/details_digital_identity.dart';

class DigitalIdentityScreen extends BaseStatelessWidget {
  DigitalIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          10.ph,
          CustomTitle(),
          10.ph,
          DetailsDigitalIdentity(),

        ],
      ),
    );
  }


}
