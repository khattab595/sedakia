import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/core/widgets/texts/row_texts.dart';
import 'package:app/src/request_log/domain/entities/my_request.dart';
import 'package:app/src/request_log/presentation/view/widgets/request_attachments_sheet.dart';
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
                onPressed: () => showAttachmentsSheet(context),
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
                    label: request.leaveType ?? "",
                    fontSize: 12,
                    labelStyle: primaryMediumStyle.copyWith(
                        fontSize: 14, color: orangeColor),
                  ),
                ),
              ),
              const Spacer(),
              BlackMediumText(
                // generated code that contains 6 number
                label: '#${request.code ?? ""}',
                fontSize: 16,
              ),
            ],
          ),
          10.ph,
          if (request.createdAt != null)
            rowText(strings.order_history, request.createdAt),
          if (request.responseDate != null)
            rowText(strings.response_date, request.responseDate),
          if (request.startDate != null)
            rowText(strings.leave_start_date, request.startDate),
          if (request.endDate != null)
            rowText(strings.leave_end_date, request.endDate),
          if (request.advanceAmount != null)
            rowText(strings.advance_amount, request.advanceAmount),
          if (request.vacationType != null && request.vacationType!.isNotEmpty)
            rowText(strings.type_of_holiday, request.vacationType),
          if (request.reasonRejectionLeaveRequest != null)
            rowText(strings.reason_of_refuse, request.reasonRejectionLeaveRequest, textColor: context.errorColor),
          if (request.description != null)
            rowText(strings.description, request.description),
          9.ph,
        ],
      ),
    );
  }

  Widget rowText(String title, String? value, {Color? textColor}) {
    return RowTexts(
      title: title,
      value: value ?? "",
      titleStyle: primaryMediumStyle.copyWith(fontSize: 14, color: textColor),
      valueStyle:
          primaryRegularStyle.copyWith(color: greyColorB1, fontSize: 12),
      padding: 2.paddingVert,
    );
  }

  void showAttachmentsSheet(BuildContext context) {
    if (request.files != null && request.files!.isNotEmpty) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) =>
            RequestAttachmentsSheet(files: request.files ?? []),
      );
    }
  }
}
