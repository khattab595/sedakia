import 'package:app/core/utils/navigator.dart';
import 'package:app/src/home/data/models/home_data_dto.dart';
import 'package:app/src/request_log/presentation/view/pages/request_file_screen.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

import '../../../../../core/widgets/images/image_network.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/my_request.dart';
import '../widgets/request_log.dart';

class RequestAttachmentsScreen extends BaseStatelessWidget {
  final List<ModelDto> files;

  RequestAttachmentsScreen({Key? key, required this.files}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> onlyPdf = files
        .where((element) => element.url!.contains('.pdf'))
        .map((e) => e.url!)
        .toList();
    return AppScaffold(
      title: strings.attachments,
      body: GridView.builder(
        itemCount: files.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          mainAxisExtent: 150,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        padding: 10.paddingAll,
        itemBuilder: (context, index) {
          final e = files[index];
          return InkWell(
            onTap: () {
              push(RequestFileScreen(file: e));
            },
            child: Container(
              decoration: Decorations.kDecorationBorderRadius(),
              child: e.url!.contains('.pdf')
                  ? Icon(
                      Icons.picture_as_pdf,
                      size: 150,
                    )
                  : ImageNetwork(
                      image: e.url ?? "",
                      margin: const EdgeInsets.all(8.0),
                      fit: BoxFit.scaleDown,
                    ),
            ),
          );
        },
      ),
    );
  }
}
