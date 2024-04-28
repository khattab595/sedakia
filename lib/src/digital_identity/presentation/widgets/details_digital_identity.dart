import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/core/widgets/texts/texts.dart';

import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../main_index.dart';

class DetailsDigitalIdentity extends BaseStatelessWidget {
  DetailsDigitalIdentity({super.key});
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ContainerShapeShadow(
      radius: 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          item(strings.city, "جدة"),
          const Divider(),
          item(strings.bus, "644445"),
          const Divider(),
          item(strings.camp, "باقة 1 9 الخيام المطورة"),
          const Divider(),
          item(strings.nationality, "مصري"),
          const Divider(),
          item(strings.gender, "ذكر"),
          const Divider(),
          item(strings.iD_number, "151544545"),
          const Divider(),
          item(strings.mobile_number, "2464646"),
          const Divider(),
          item(strings.reservation_number, "2464646"),
          const Divider(),
          item(strings.status, "تم اصدار التص ريح"),
          const Divider(),
          item(strings.package_number, "2464646"),
          const Divider(),
          item(strings.collar, "باقة 1- جدة"),
          const Divider(),
          item(strings.arafat_tent, "644445"),
          const Divider(),
          item(strings.seat_number_in_arafat, "2464646"),
          const Divider(),
          item(strings.a_tent_from_me, "111"),
          const Divider(),
          item(strings.seat_number_in_me, "2464646"),
          const Divider(),
          item(strings.zadlifa_tent, "111"),
          const Divider(),
          item(strings.seat_number_in_muzdalifah, "2464646"),
          20.ph,
          Row(
            children: [
              10.pw,
              StatefulBuilder(builder: (context, setState) {
                return Checkbox(
                  value: isSelected,
                  activeColor: primaryColor,
                  side: BorderSide(
                    color: context.primaryColor,
                    width: 1,
                  ),
                  visualDensity: VisualDensity.compact,
                  onChanged: (value) {
                    setState(() {
                      isSelected = value!;
                    });
                  },
                );
              }),
              BoldText(
                label: strings.go_to_camp,
                fontSize: 15,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget item(String title, String value) {
    return Container(
      padding: 20.paddingStart + 12.paddingVert,
      child: ColumnTexts(
        title: title,
        value: value,
        titleStyle: primaryBoldStyle.copyWith(
          fontSize: 13,
        ),
        valueStyle: blackBoldStyle.copyWith(
          fontSize: 15,
        ),
      ),
    );
  }
}
