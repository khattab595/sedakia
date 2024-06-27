import 'package:app/core/widgets/images/image_network.dart';
import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/core/widgets/texts/row_texts.dart';
import 'package:app/src/request_log/domain/entities/my_request.dart';
import '../../../../../core/widgets/texts/black_texts.dart';
import '../../../../main_index.dart';

class RequestLogItem extends BaseStatelessWidget {
  final MyRequest request;

  RequestLogItem({
    super.key,
    required this.request,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 15.paddingAll,
      margin: 20.paddingHoriz + 10.paddingBottom,
      decoration: Decorations.kDecorationBorderRadius(
        radius: 10,
        borderColor: dividerColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              AppIconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => Container(
                            color: Colors.white,
                            height: context.height,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // SingleChildScrollView(
                                //   padding: const EdgeInsets.only(top: 50),
                                //   scrollDirection: Axis.horizontal,
                                //   child: Row(
                                //     children: request.?.map((e) => ImageNetwork(
                                //               image: e,
                                //               width: 200,
                                //               height: 200,
                                //               padding:
                                //                   const EdgeInsets.all(8.0),
                                //             ))
                                //         .toList(),
                                //   ),
                                // ),
                                PrimaryButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  title: strings.close,
                                ),
                              ],
                            ),
                          ));
                },
                icon: AppIcons.desc,
                size: 25,
              ),
              5.pw,
              Container(
                decoration: Decorations.kDecorationBorderRadius(
                    radius: 5, color: orangeLight, borderColor: orangeLight),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                child: Center(
                  child: PrimaryRegularText(
                    label: request.status ?? "",
                    fontSize: 12,
                    labelStyle: primaryMediumStyle.copyWith(
                        fontSize: 14, color: orangeColor),
                  ),
                ),
              ),
              const Spacer(),
              BlackMediumText(
                // generated code that contains 6 number
                label: request.id.toString(),
                fontSize: 16,
              ),
            ],
          ),
          9.ph,
          Row(
            children: [
              HintRegularText(label: "${strings.description} : ", fontSize: 14),
              5.pw,
              HintRegularText(
                label: request.description ?? "",
              ),
            ],
          ),
          10.ph,
          if (request.startDate != null)
          RowTexts(
            title: strings.order_history,
            value: request.startDate ?? "",
            titleStyle: primaryMediumStyle.copyWith(fontSize: 14),
            valueStyle:
                primaryRegularStyle.copyWith(color: greyColorB1, fontSize: 12),
          ),
          5.ph,
          if (request.endDate != null)
          RowTexts(
            title: strings.reply_date,
            value: request.responseDate ?? "",
            titleStyle: primaryMediumStyle.copyWith(fontSize: 14),
            valueStyle:
                primaryRegularStyle.copyWith(color: greyColorB1, fontSize: 12),
          ),
          5.ph,
          if (request.startDate != null)
          RowTexts(
            title: strings.advance_amount,
            value: request.startDate ?? "",
            titleStyle: primaryMediumStyle.copyWith(fontSize: 14),
            valueStyle:
                primaryRegularStyle.copyWith(color: greyColorB1, fontSize: 12),
          ),
          // 5.ph,
          // //   if (id == 1)
          // RowTexts(
          //   title: strings.reason_of_refuse,
          //   value: request.responseDate ?? "",
          //   titleStyle: primaryMediumStyle.copyWith(fontSize: 14),
          //   valueStyle:
          //       primaryRegularStyle.copyWith(color: errorColor, fontSize: 12),
          // ),
        ],
      ),
    );
  }
}
