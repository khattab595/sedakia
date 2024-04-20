import 'dart:io';

import '../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../main_index.dart';
import '../../data/models/edit_profile_params.dart';
import '../../domain/entities/profile.dart';
import '../widgets/edit_profile_image.dart';

class EditProfileScreen extends BaseStatelessWidget {
  final Profile profile;
  final Function(EditProfileParams params) onEdit;
  final Function(File file) onEditImage;

  EditProfileScreen({Key? key, required this.profile, required this.onEdit, required this.onEditImage}) : super(key: key);

  TextEditingController facilityNameController = TextEditingController();
  TextEditingController facilityNoController = TextEditingController();
  TextEditingController pointSaleNumberController = TextEditingController();
  TextEditingController pointSaleAddressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
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
            EditProfileImage(
              image: profile.image ?? '',
              onSelectImage: (file){
                onEditImage(file);
              },
            ),
            20.ph,
            CustomTextField(
              title: strings.facility_name,
              controller: facilityNameController,
                enabled: false,
            ),
            CustomTextField(
              title: strings.no_facility,
              controller: facilityNoController,
              enabled: false,
            ),
            CustomTextField(
              title: strings.point_sale_mobile_number,
              controller: pointSaleNumberController,
              enabled: false,
            ),
            CustomTextField(
              title: strings.point_sale_address,
              controller: pointSaleAddressController,
              enabled: false,
            ),
            CustomTextField(
              title: strings.email,
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            CustomTextField(
              title: strings.mobile_number,
              controller: phoneController,
              keyboardType: TextInputType.phone,
            ),
            editButton(),
          ],
        ),
      ),
    );
  }

  editButton(){
   return PrimaryButton(
     title: strings.save,
      onPressed: onEditPressed,

      margin:20.paddingVert,
    //  padding: const EdgeInsets.symmetric(vertical: 12),
    );
  }

  onEditPressed(){
    if (formKey.currentState!.validate()) {
      onEdit(
        EditProfileParams(
          email: emailController.text,
          phone: phoneController.text,
        ),
      );
    }
  }

  _initData() {
    facilityNameController.text = profile.facility?.name ?? '';
    facilityNoController.text = profile.facility?.num ?? '';
    pointSaleNumberController.text = profile.num  ?? '';
    pointSaleAddressController.text = profile.address ?? '';
    emailController.text = profile.email ?? '';
    phoneController.text = profile.phone ?? '';
  }
}