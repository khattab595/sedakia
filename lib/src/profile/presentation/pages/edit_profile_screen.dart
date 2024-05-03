import 'dart:io';

import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../core/widgets/drop_down/drop_down_stream.dart';
import '../../../../core/widgets/text-field/custom_text_field.dart';
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
  TextEditingController dateController = TextEditingController();
  String academicLevel = '';
  String stageLevelId = '';

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
            ),
            CustomTextField(
              title: strings.name,
              controller: nameController,
            ),
            CustomTextField(
              title: strings.phone_number,
              controller: phoneController,
            ),
            CustomTextField(
              title: strings.parent_mobile_number,
              controller: parentPhoneController,
            ),
            CustomTextField(
              title: strings.study,
              controller: studyController,
            ),
            CustomTextField(
              title: strings.mobile_number,
              controller: phoneController,
              keyboardType: TextInputType.phone,
            ),
            DropDownField(
              hint: strings.academic_level,
              items: items,
              value: academicLevel,
              onChanged: (value) {
                academicLevel = value.id ?? '';
                onFetchStageLevels(academicLevel);
              },
            ),
            DropDownFieldStream(
              hint: strings.choose_stage,
              stream: stageLevelsStream,
              value: stageLevelId,
              onChanged: (value) {
                stageLevelId = value.id ?? '';
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
      onEdit(
        ProfileDto(
          id: profile.id,
          name: nameController.text,
          parentPhone: parentPhoneController.text,
        ),
      );
    }
  }

  _initData() {
    serialNumberController.text = profile.specialCode ?? '';
    nameController.text = profile.name ?? '';
    phoneController.text = profile.phoneNumber ?? '';
    parentPhoneController.text = profile.parentPhone ?? '';
    academicLevel  = profile.academicLevel ?? '';
    stageLevelId = profile.stageLevelId.toString();
    dateController.text = profile.birthDate ?? '';
  }
}