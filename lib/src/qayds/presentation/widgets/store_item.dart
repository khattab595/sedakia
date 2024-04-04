import 'package:app/core/assets/app_icons.dart';
import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/buttons/app_icon_button.dart';
import 'package:app/core/widgets/buttons/primary_button.dart';
import 'package:app/core/widgets/buttons/row_buttons.dart';
import 'package:app/src/qayds/data/models/add_store_params.dart';
import 'package:app/src/profile/data/models/profile_dto.dart';
import 'package:app/src/settings/presentation/widgets/settengs_container.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/widgets/text-field/custom_text_field.dart';

class StoreItem extends BaseStatelessWidget {
  final StoreDto? store;
  final Function(AddStoreParams)? onSave;
  final Function(StoreDto)? onEdit;
  final Function(int)? onDefault;
  final Function(int)? onDelete;

  StoreItem(
      {Key? key,
        this.store,
       this.onSave,
      this.onEdit,
      this.onDefault,
      this.onDelete,
      })
      : super(key: key);


  TextEditingController nameController = TextEditingController();

  TextEditingController linkController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _initData();
    bool isEdit = store != null;
    return SettingsContainer(
      padding: isEdit ? null : 10.paddingAll,
      decoration: isEdit ? null : const BoxDecoration(),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(
              title: strings.store_name,
              controller: nameController,
              hintText: strings.store_name,
              margin: 15.paddingBottom,
            ),
            CustomTextField(
              title: strings.store_link,
              controller: linkController,
              hintText: strings.store_link,
              keyboardType: TextInputType.emailAddress,
              margin: 15.paddingBottom,
              isValidator: false,
            ),
            if (!isEdit)
              RowButtons(
                title1: context.strings.save,
                title2: context.strings.cancel,
                padding: 10.paddingHoriz,
                height: 45,
                onPressed1: onSavePressed,
                onPressed2: () {
                  Navigator.pop(context);
                },
              )
            else
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppIconButton(
                    icon: (store?.isDefault == 1) ? AppIcons.favorite_bold : AppIcons.favorite_outline,
                    color: context.primaryColor,
                    size: 26,
                    onPressed: onDefaultPressed,
                  ),
                  const Spacer(),
                  Expanded(
                    child: RowButtons(
                      title1: context.strings.edit,
                      title2: context.strings.delete,
                      padding: 10.paddingHoriz,
                      onPressed1: onEditPressed,
                      onPressed2: () => onDelete!(store?.id ?? 0),
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }

  _initData() {
    nameController.text = store?.storeName ?? '';
    linkController.text = store?.storeLink ?? '';
  }

  onSavePressed() {
    if (formKey.currentState!.validate()) {
      onSave!(AddStoreParams(
        storeName: nameController.text,
        storeLink: linkController.text,
      ));
    }
  }

  onEditPressed() {
    if (formKey.currentState!.validate()) {
      StoreDto store = StoreDto(
        id: this.store!.id,
        storeName: nameController.text,
        storeLink: linkController.text,
      );
      onEdit?.call(store);
    }
  }

  onDefaultPressed() {
    if (formKey.currentState!.validate()) {
      StoreDto store = StoreDto(
        id: this.store!.id,
        storeName: nameController.text,
        storeLink: linkController.text,
        isDefault: 1,
      );
      onEdit?.call(store);
    }
  }

  static showAddStoreDialog(BuildContext context, {Function(AddStoreParams)? onSave, Function(StoreDto)? onEdit, Function(int)? onDelete}) {
    showAdaptiveDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            insetPadding: const EdgeInsets.symmetric(horizontal: 16),
            actionsPadding: EdgeInsets.zero,
            iconPadding: EdgeInsets.zero,
            buttonPadding: EdgeInsets.zero,
            alignment: Alignment.center,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: StoreItem(
              onSave: onSave,
              onEdit: onEdit,
              onDelete: onDelete,
            ),
          );
        });
  }
}
