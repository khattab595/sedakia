
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
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 50),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: files.map((e) => ImageNetwork(
                image: e.url ?? "",
                width: 200,
                height: 200,
                padding:
                const EdgeInsets.all(8.0),
              ))
                  .toList() ??
                  [],
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
