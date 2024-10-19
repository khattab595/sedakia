import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../main_index.dart';
import '../../data/models/home_data_dto.dart';

class OrdersStatistics extends BaseStatelessWidget {
  final List<ModelDto> models;
  final Function(String)? onDownload;

  OrdersStatistics({super.key, required this.models, this.onDownload});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: 0.paddingAll,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 100,
      ),
      itemBuilder: (context, index) {
        return OrderStatistic(
          model: models[index],
          onDownload: onDownload,
        );
      },
    );
  }
}

class OrderStatistic extends BaseStatelessWidget {
  final ModelDto model;
  final Function(String)? onDownload;

  OrderStatistic({super.key, required this.model, this.onDownload});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: 10.paddingAll,
      padding: 10.paddingAll,
      decoration:
          Decorations.shapeDecorationShadow(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SemiBoldPrimaryText(
            label: '300',
            fontSize: 20
          ),
          5.ph,
          PrimaryMediumText(
            label: 'Number of orders',
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}
