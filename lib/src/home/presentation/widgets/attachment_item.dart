import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../main_index.dart';
import '../../data/models/home_data_dto.dart';

class AttachmentList extends BaseStatelessWidget {
  final List<ModelDto> models;
  final Function(String)? onDownload;

  AttachmentList({super.key, required this.models, this.onDownload});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: models.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return AttachmentItem(
            model: models[index],
            onDownload: onDownload,
          );
        },
      ),
    );
  }
}

class AttachmentItem extends BaseStatelessWidget {
  final ModelDto model;
  final Function(String)? onDownload;

  AttachmentItem({super.key, required this.model, this.onDownload});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onDownload?.call(model.url ?? '');
      },
      child: Container(
        margin: 4.paddingHoriz,
         width: MediaQuery.of(context).size.width/3.5,
        decoration:
            Decorations.kDecorationBorderRadius(borderColor: dividerColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SemiBoldPrimaryText(
              label: strings.request,
              fontSize: 16,
            ),
            SemiBoldPrimaryText(
              label: model.name ?? '',
              fontSize: 16,
            ),
            10.ph,
            const Icon(
              Icons.download_rounded,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
