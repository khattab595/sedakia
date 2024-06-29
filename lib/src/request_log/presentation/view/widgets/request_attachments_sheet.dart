import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

import '../../../../../core/widgets/images/image_network.dart';
import '../../../../home/data/models/home_data_dto.dart';
import '../../../../main_index.dart';

class RequestAttachmentsSheet extends BaseStatelessWidget {
  final List<ModelDto> files;
  RequestAttachmentsSheet({super.key, required this.files});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: context.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 50),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: files.map((e) =>
                e.url!.contains('.pdf') ? const PDF(
                  swipeHorizontal: true,
                ).cachedFromUrl(e.url ?? "") :
                    ImageNetwork(
                  image: e.url ?? "",
                  height: 500,
                  width: context.width * 0.9,
                  margin:
                  const EdgeInsets.all(8.0),
                  fit: BoxFit.scaleDown,
                ))
                    .toList() ??
                    [],
              ),
            ),
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.pop(context);
            },
            margin: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 20),
            title: strings.back,
          ),
        ],
      ),
    );
  }
}
