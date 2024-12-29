import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';
import '../../../data/model/experiments_dto.dart';
import '../../bloc/electronic_rosary_bloc.dart';
import 'electronic_rosary_screen.dart';

class ElectronicRosaryPage
    extends BaseBlocWidget<UnInitState, ElectronicRosaryCubit> {
  ElectronicRosaryPage({Key? key}) : super(key: key);
  TextEditingController experimentNameController = TextEditingController();
  TextEditingController countController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    ExperimentsDto? data;

    return  StatefulBuilder(
      builder: (context,setState) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
               'السبحة',
              style:
                  theme.appBarTheme.titleTextStyle?.copyWith(
                      color: AppColors.primaryLight,
                      fontWeight: FontWeight.w600),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            actions: [
              20.pw,
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => SizedBox(
                        height: 330,
                        child: Form(
                          key: formkey,
                          child: Column(
                            children: [
                              25.ph,
                              CustomTextField(
                                margin: 16.paddingHoriz + 20.paddingBottom,
                                hintText: "اسم المجربة",
                                controller: experimentNameController,
                                keyboardType: TextInputType.name,
                              ),
                              CustomTextField(
                                margin: 16.paddingHoriz,
                                hintText: "اضافة العدد هنا",
                                keyboardType: TextInputType.number,
                                controller: countController,
                              ),
                              PrimaryButton(
                                  margin: 50.paddingHoriz + 50.paddingVert,
                                  title: "ابدأ",
                                  onPressed: () {
                                    data = ExperimentsDto(
                                        count: int.parse(countController.text),
                                        experimentName:
                                        experimentNameController.text);
                                    Navigator.pop(context);
                                    setState((){});
                                  },
                               )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 25,
                    color: Colors.black,
                  ))
            ],
          ),

          body: ElectronicRosaryScreen(data: data ?? ExperimentsDto()),
        );
      }
    );
  }
}
