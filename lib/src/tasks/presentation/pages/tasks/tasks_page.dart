import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/src/tasks/presentation/pages/tasks/tasks_screen.dart';
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';
import '../../bloc/tasks_bloc.dart';

class TasksPage extends BaseBlocWidget<UnInitState, TasksCubit> {
  TasksPage({Key? key}) : super(key: key);

  // @override
  // String? title(BuildContext context) {
  //   return "المهام";
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "المهام",
          style: theme.appBarTheme.titleTextStyle?.copyWith(
              color: AppColors.primaryLight, fontWeight: FontWeight.w600),
        ),
      ),
      bottomNavigationBar: PrimaryButton(
        title: "اضافة مهام",
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              context: context,
              isScrollControlled: true,
              backgroundColor: cardColor,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              builder: (BuildContext context) {
                return Container(
                  height: 400,
                  color: cardColor,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        20.ph,
                        PrimaryBoldText(label: "أضف مهمة"),
                        40.ph,
                        CustomTextField(
                          hintText: "أضف مهمة",
                          margin: 16.paddingHoriz,
                          maxLines: 5,
                        ),
                        60.ph,
                        PrimaryButton(
                          title: "اضافة",
                          margin: 16.paddingHoriz,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        radius: 10,
        margin: 30.paddingHoriz + 20.paddingVert,
      ),
      body: buildConsumer(context),
    );
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return TasksScreen();
  }
}
