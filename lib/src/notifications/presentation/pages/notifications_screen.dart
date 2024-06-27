import '../../../../core/widgets/custom_empty_widget.dart';
import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../../core/widgets/texts/row_texts.dart';
import '../../../main_index.dart';
import '../../data/models/notification_dto.dart';
import '../widgets/notification_item.dart';

class NotificationsScreen extends BaseStatelessWidget {
  final List<NotificationDto> data;
  NotificationsScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return data.isEmpty
        ? CustomEmptyWidget(
            image: AppIcons.smartphone,
            text: strings.notification_empty_text,
            title: strings.notification_empty_title,
          )
        : ListView.builder(
            itemCount: data.length,
            padding: 10.paddingAll,
            itemBuilder: (context, index) {
              return NotificationItem(
                  notification: data[index],
                    );
            },
          );
  }
}
