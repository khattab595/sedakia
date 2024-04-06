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
    return AppScaffold(
      bottomNavigationBar: editButton(),
      backgroundColor: context.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        padding: 16.paddingHoriz,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              EditProfileImage(
              image: '',
                onSelectImage: (file){
                  onEditImage(file);
                },
              ),
              20.ph,
              CustomTextField(
                title: strings.facility_name,
                controller: facilityNameController,
              ),
              CustomTextField(
                title: strings.no_facility,
                controller: facilityNoController,
              ),
              CustomTextField(
                title: strings.point_sale_mobile_number,
                controller: pointSaleNumberController,
              ),
              CustomTextField(
                title: strings.point_sale_address,
                controller: pointSaleAddressController,
              ),
              CustomTextField(
                title: strings.email,
                controller: emailController,
              ),
              CustomTextField(
                title: strings.phone_number,
                controller: phoneController,
              ),
              100.ph,
            ],
          ),
        ),
      ),
    );
  }

  editButton(){
   return PrimaryButton(
     title: strings.save,
      onPressed: onEditPressed,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    //  padding: const EdgeInsets.symmetric(vertical: 12),
    );
  }

  onEditPressed(){
    if (formKey.currentState!.validate()) {
      onEdit(
        EditProfileParams(
          name: facilityNameController.text,
          email: facilityNoController.text,
          phone: pointSaleNumberController.text,
        ),
      );
    }
  }

  _initData() {
    facilityNameController.text = profile.name ?? '';
    facilityNoController.text = profile.email ?? '';
    pointSaleNumberController.text = profile.phone  ?? '';
  }
}