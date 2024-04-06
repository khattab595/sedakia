import 'dart:ui';

import 'package:app/src/main_index.dart';
import '../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../core/widgets/texts/texts.dart';

class ReportsScreen extends BaseStatelessWidget {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextField(
              controller: searchController,
              hintText: strings.search_by_history,
              hintStyle: titleSmall.copyWith(
                  fontSize: 15, color: Colors.black.withOpacity(.7)),
              suffixIcon: AppIcon(
                padding: 10.paddingAll,
                icon: AppIcons.calender1,
              ),
            ),
            Row(
              children: [
                numberWidget(
                    isRS: false,
                    context: context,
                    backgroundColor: kRedColor70,
                    text: strings.num_qayds,
                    value: "500"),
                const Spacer(),
                numberWidget(
                    isRS: true,
                    context: context,
                    backgroundColor: kRedColor70,
                    text: strings.num_qayds,
                    value: "500"),
              ],
            ),
            Row(
              children: [
                numberWidget(
                    isRS: false,
                    context: context,
                    backgroundColor: kGreenColor8E,
                    text: strings.num_qayds_paid,
                    value: "500"),
                const Spacer(),
                numberWidget(
                    isRS: true,
                    context: context,
                    backgroundColor: kGreenColor8E,
                    text: strings.total_qayds_paid,
                    value: "500"),
              ],
            ),
            Row(
              children: [
                numberWidget(
                    isRS: false,
                    context: context,
                    backgroundColor: kYellowColor93,
                    text: strings.num_qayds_ongoing_unpaid,
                    value: "500"),
                const Spacer(),
                numberWidget(
                    isRS: true,
                    context: context,
                    backgroundColor: kYellowColor93,
                    text: strings.total_qayds_ongoing_unpaid,
                    value: "500"),
              ],
            ),
            Row(
              children: [
                numberWidget(
                    isRS: false,
                    context: context,
                    backgroundColor: kBlueEA,
                    text: strings.num_qayds_stumbled_unpaid,
                    value: "500"),
                const Spacer(),
                numberWidget(
                    isRS: true,
                    context: context,
                    backgroundColor: kBlueEA,
                    text: strings.total_qayds_stumbled_unpaid,
                    value: "500"),
              ],
            ),
            Row(
              children: [
                numberWidget(
                    isRS: false,
                    context: context,
                    backgroundColor: kYellowColor45,
                    text: strings.num_qayds_stumbled_paid,
                    value: "500"),
                const Spacer(),
                numberWidget(
                    isRS: true,
                    context: context,
                    backgroundColor: kYellowColor45,
                    text: strings.total_qayds_stumbled_paid,
                    value: "500"),
              ],
            ),
            Row(
              children: [
                numberWidget(
                    isRS: false,
                    context: context,
                    backgroundColor: kRedColorff,
                    text: strings.num_qayds_unpaid,
                    value: "500"),
                const Spacer(),
                numberWidget(
                    isRS: true,
                    context: context,
                    backgroundColor: kRedColorff,
                    text: strings.total_qayds_unpaid,
                    value: "500"),
              ],
            ),
            numberWidget(
                width: MediaQuery.of(context).size.width - 40,
                isRS: true,
                context: context,
                backgroundColor: kGreenColor99,
                text: strings.qayd_app_collection_amount,
                value: "500"),
          ],
        ),
      ),
    );
  }

  Widget numberWidget({
    required bool isRS,
    double? width,
    required BuildContext context,
    required Color backgroundColor,
    required String text,
    required String value,
  }) {
    return Container(
      padding: 10.paddingAll,
      margin: 10.paddingTop,
      alignment: Alignment.center,
      height: 130,
      width: width ?? MediaQuery.of(context).size.width / 2.4,
      decoration: Decorations.baseDecorationRadius(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: 5.paddingTop,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: backgroundColor,
                  ),
                ),
                10.pw,
                Expanded(child: SemiBoldText(label: text))
              ],
            ),
          ),
          10.ph,
          Row(
            children: [
              const AppIcon(icon: AppIcons.export),
              const Spacer(),
              SemiBoldText(
                label: value,
                fontSize: 30,
              ),
              isRS == false
                  ? const SizedBox()
                  : RegularText(
                      label: strings.rs,
                      fontSize: 14,
                    )
            ],
          )
        ],
      ),
    );
  }
}
