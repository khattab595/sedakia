import '../../../../core/widgets/custom_empty_widget.dart';
import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../../core/widgets/texts/row_texts.dart';
import '../../../main_index.dart';
import '../../data/models/notification_dto.dart';
import '../../domain/entities/notification.dart';
import '../widgets/notification_item.dart';
class NotificationsScreen extends BaseStatelessWidget {
 // final List<Notifications> notifications;
   NotificationsScreen({Key? key,
    // required this.notifications
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if(notifications.isEmpty){
    //   return CustomEmptyWidget(image: AppIcons.smartphone, text: strings.notification_empty_text, title:strings.notification_empty_title,);
    // }
    // else{
      return Container(
        margin: 4.paddingHoriz,
        child: Column(
          children: [
          Container(
          padding: 15.paddingAll,
          margin: 10.paddingHoriz + 10.paddingTop,
          decoration: Decorations.kDecorationBorderRadius(
              borderColor: dividerColor, radius: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowTexts(
                title: "نقل المشروع",
                value: "منذ دقيقة واحدة.",
                titleStyle: primaryMediumStyle.copyWith(fontSize: 16),
                valueStyle: primaryRegularStyle.copyWith(fontSize: 11),
              ),
              2.ph,
              PrimaryRegularText(
                label: " لقد تم نقلك الى مشروع جديد اليوم ",
                fontSize: 12,
              ),
            ],
          ),
        ),
            Container(
          padding: 15.paddingAll,
          margin: 10.paddingHoriz + 10.paddingTop,
          decoration: Decorations.kDecorationBorderRadius(
              borderColor: dividerColor, radius: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowTexts(
                title: "راتبك",
                value: "منذ دقيقة واحدة.",
                titleStyle: primaryMediumStyle.copyWith(fontSize: 16),
                valueStyle: primaryRegularStyle.copyWith(fontSize: 11),
              ),
              2.ph,
              PrimaryRegularText(
                label: "لقد تم تنزيل راتب اليوم إلى حسابك",
                fontSize: 12,
              ),
            ],
          ),
        ), Container(
          padding: 15.paddingAll,
          margin: 10.paddingHoriz + 10.paddingTop,
          decoration: Decorations.kDecorationBorderRadius(
              borderColor: dividerColor, radius: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowTexts(
                title: "الرد على طلب اجازتك ",
                value: "منذ دقيقة واحدة.",
                titleStyle: primaryMediumStyle.copyWith(fontSize: 16),
                valueStyle: primaryRegularStyle.copyWith(fontSize: 11),
              ),
              2.ph,
              PrimaryRegularText(
                label: "لقد تم قبول طلب اجازتك رقم 345677",
                fontSize: 12,
              ),
            ],
          ),
        ),
          ],
        ),
      );

      //   ListView.builder(
      //   itemCount: 10,
      //   padding: 10.paddingAll,
      //   itemBuilder: (context, index) {
      //     return NotificationItem(
      //       // notification: notifications[index],
      //       // isFirst: index == 0 ? true : false,
      //       // isLast: index == notifications.length - 1 ? true : false,
      //     );
      //   },
      // );

  //  }
  }
}
