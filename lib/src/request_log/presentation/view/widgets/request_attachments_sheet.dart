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
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 50),
              // scrollDirection: Axis.horizontal,
              child: Column(
                children: files.map((e) =>
                e.url!.contains('.pdf') ? SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 500,
                  child: const PDF(
                    swipeHorizontal: true,
                  ).cachedFromUrl(e.url ?? ""),
                ) :
                    ImageNetwork(
                  image: e.url ?? "",
                  height: 500,
                  width: MediaQuery.of(context).size.width - 50,
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
