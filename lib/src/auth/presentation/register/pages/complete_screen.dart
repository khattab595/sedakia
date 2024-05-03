import 'dart:io';

import 'package:app/core/widgets/drop_down/drop_down.dart';
import 'package:app/core/widgets/drop_down/drop_down_stream.dart';

import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../../core/widgets/texts/primary_texts.dart';
import '../../../../main_index.dart';
import '../../../data/models/complete_registration_params.dart';
import '../../../data/models/register_params.dart';
import '../../widgets/check_box_terms_conditions.dart';
import '../widgets/select_image.dart';

class CompleteScreen extends BaseStatelessWidget {
  final List<DropDownItem> items;
  final StreamStateInitial<List<DropDownItem>?> stageLevelsStream;
  final Function(String academicLevelId) onFetchStageLevels;
  final Function(CompleteRegistrationParams)? onRegister;

  CompleteScreen(
      {super.key,
      required this.items,
      required this.stageLevelsStream,
      required this.onFetchStageLevels,
      this.onRegister});

  String academicLevel = '';
  String stage = '';
  String gender = '';
  String birthDate = '';
  File forwardImage = File('');
  File backwardImage = File('');

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropDownField(
            hint: strings.academic_level,
            items: items,
            onChanged: (value) {
              academicLevel = value.id ?? '';
              onFetchStageLevels(academicLevel);
            },
          ),
          DropDownFieldStream(
            hint: strings.choose_stage,
            stream: stageLevelsStream,
            onChanged: (value) {
              stage = value.id ?? '';
            },
          ),
          DropDownField(
            hint: strings.gender,
            items: [
              DropDownItem(id: '1', title: strings.male),
              DropDownItem(id: '2', title: strings.female),
            ],
            onChanged: (value) {
              gender = value.title ?? '';
            },
          ),
          HintMediumText(label: strings.adding_unified_card),
          Row(
            children: [
              Expanded(
                child: SelectImage(
                  title: strings.forward_face,
                  onSelectImage: (file) {
                    forwardImage = file;
                  },
                ),
              ),
              10.pw,
              Expanded(
                child: SelectImage(
                  title: strings.back_face,
                  onSelectImage: (file) {
                    backwardImage = file;
                  },
                ),
              ),
            ],
          ),
          PrimaryButton(
            title: strings.next,
            margin: 10.paddingTop,
            onPressed: () => onPressed(),
            //buttonTextColor: AppColors.appTextColorWhite,
          ),
        ],
      ),
    );
  }

  onPressed() async {
    if (formKey.currentState!.validate()) {
      onRegister!(CompleteRegistrationParams(
        academicLevelId: academicLevel,
        stageLevelId: stage,
        gender: gender,
        birthDate: birthDate,
        picIdentityB: backwardImage.path,
        picIdentityF: forwardImage.path,
      ));
    }
  }
}
