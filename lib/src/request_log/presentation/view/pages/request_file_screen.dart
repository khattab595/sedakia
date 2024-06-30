
import 'package:app/src/home/data/models/home_data_dto.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

import '../../../../../core/widgets/images/image_network.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/my_request.dart';
import '../widgets/request_log.dart';

class RequestFileScreen extends BaseStatelessWidget {
  final ModelDto file;

  RequestFileScreen({Key? key, required this.file}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: strings.attachment,
      body:  file.url!.contains('.pdf') ? SizedBox(
      child: const PDF(
        enableSwipe: true,

      ).cachedFromUrl(file.url ?? ""),
    ) :
    ImageNetwork(
      image: file.url ?? "",
      margin:
      const EdgeInsets.all(8.0),
      size: double.infinity,
      fit: BoxFit.contain,
    ),
    );
  }
}
