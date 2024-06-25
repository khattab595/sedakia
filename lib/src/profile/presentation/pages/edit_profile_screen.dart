import 'dart:io';

import '../../../../core/utils/date_formatter.dart';
import '../../../../core/utils/helper_methods.dart';
import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../core/widgets/drop_down/drop_down_stream.dart';
import '../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../core/widgets/text-field/mobile_text_field.dart';
import '../../../main_index.dart';
import '../../data/models/profile_dto.dart';
import '../../domain/entities/profile.dart';

class EditProfileScreen extends BaseStatelessWidget {
  final Profile profile;
  final List<DropDownItem> items;
  final StreamStateInitial<List<DropDownItem>?> stageLevelsStream;
  final Function(String academicLevelId) onFetchStageLevels;
  final Function(ProfileDto) onEdit;
  final Function(File file) onEditImage;

  EditProfileScreen({Key? key, required this.items, required this.stageLevelsStream, required this.onFetchStageLevels, required this.profile, required this.onEdit, required this.onEditImage}) : super(key: key);

  TextEditingController serialNumberController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController parentPhoneController = TextEditingController();
  TextEditingController studyController = TextEditingController();
  TextEditingController stageController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  String academicLevelId = '';
  String stageLevelId = '';
  String gender = '';

  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _initData();
    return SingleChildScrollView(
      padding: 16.paddingHoriz,
      child: Form(
        key: formKey,
        child: Column(
          children: [
            20.ph,
            CustomTextField(
              title: strings.serial_number,
              controller: serialNumberController,
              enabled: false,
            ),
            CustomTextField(
              title: strings.name,
              controller: nameController,
            ),
            MobileTextField(
              title: strings.mobile_number,
              controller: phoneController,
            ),
            MobileTextField(
              title: strings.parent_mobile_number,
              controller: parentPhoneController,
            ),
            DropDownField(
              title: strings.study,
              items: items,
              value: academicLevelId,
              onChanged: (value) {
                academicLevelId = value.id ?? '';
                onFetchStageLevels(academicLevelId);
              },
            ),
            DropDownFieldStream(
              title: strings.stage,
              stream: stageLevelsStream,
              value: stageLevelId,
              onChanged: (value) {
                stageLevelId = value.id ?? '';
              },
            ),
            CustomTextField(
              controller: birthDateController,
              title: strings.birth_date,
              onTap: () async {
                DateTime? date = await HelperMethods.selectDate(context);
                birthDateController.text =
                    DateFormatter.formatTimestampString(date.toString());
              } ,
            ),
            DropDownField(
              title: strings.gender,
              value: gender,
              items: [
                DropDownItem(id: strings.male, title: strings.male),
                DropDownItem(id:  strings.female, title: strings.female),
              ],
              onChanged: (value) {
                gender = value.title ?? '';
              },
            ),
            editButton(),
          ],
        ),
      ),
    );
  }

  editButton(){
   return PrimaryButton(
     title: strings.edit,
      onPressed: onEditPressed,
      margin:20.paddingVert,
    //  padding: const EdgeInsets.symmetric(vertical: 12),
    );
  }

  onEditPressed(){
    if (formKey.currentState!.validate()) {
    }
  }

  _initData() {
    gender = profile.gender ?? '';
  }
}