import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/images/image_network.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../main_index.dart';
import '../../data/models/home_data_dto.dart';
import '../../domain/entities/home_data.dart';
import '../widgets/attachment_item.dart';
import '../widgets/project_item.dart';
import '../widgets/sliders_home.dart';

class HomeScreen extends BaseStatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 15.paddingAll + 30.paddingTop,
      child: const SingleChildScrollView(

      ),
    );
  }

}
