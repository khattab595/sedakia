import 'package:app/core/utils/navigator.dart';
import 'package:app/core/utils/storage.dart';

import '../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../main_index.dart';
import '../widgets/item_timer_widget.dart';

class PartiesScreen extends BaseStatelessWidget {
  PartiesScreen({super.key});
  final timeController = TextEditingController();
  final nameController = TextEditingController();
  TimeOfDay? selectedTime;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StatefulBuilder(builder: (context, setState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            15.ph,
            ItemTimerWidget(
                value: "الأوراد  المربوطة  بعد  صلاة  الصبح", time: "6:00"),
            ItemTimerWidget(
                value: "الأوراد  المربوطة  بعد  صلاة  العصر", time: "16:00"),
            InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        height: 350,
                        child: Form(
                          key: formkey,
                          child: Column(
                            children: [
                              20.ph,
                              CustomTextField(
                                margin: 16.paddingHoriz + 20.paddingBottom,
                                hintText: "اسم الاشعار",
                                controller: nameController,
                                keyboardType: TextInputType.name,
                              ),
                              CustomTextField(
                                margin: 16.paddingHoriz,
                                hintText: "اختر الوقت",
                                keyboardType: TextInputType.number,
                                controller: timeController,
                                onTap: () async {
                                  final TimeOfDay? timeOfDay =
                                      await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                    initialEntryMode: TimePickerEntryMode.dial,
                                  );
                                  if (timeOfDay != null) {
                                    setState(() {
                                      selectedTime = timeOfDay;
                                      timeController.text =
                                          "${timeOfDay.hour}:${timeOfDay.minute}";
                                    });
                                  }
                                },
                              ),
                              PrimaryButton(
                                margin: 50.paddingHoriz + 50.paddingVert,
                                title: "حفظ",
                                onPressed: () async {
                                  if (formkey.currentState!.validate()) {
                                    await KStorage.i
                                        .setTimeHoure(timeController.text.split(":").first);
                                    await KStorage.i
                                        .setTimeMinite(timeController.text.split(":").last);
                                    await KStorage.i
                                        .setNameNot(nameController.text);
                                    pushNamedAndRemoveUntil(
                                        Routes.navigationPages);
                                  }
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: ItemTimerWidget(
                    value: KStorage.i.getNameNot ?? "حدد  اشعار",
                    time: "${KStorage.i.getTimeHoure}:${KStorage.i.getTimeMinite}"  ?? "حدد  الوقت")),
            30.ph,
          ],
        );
      }),
    );
  }
}
