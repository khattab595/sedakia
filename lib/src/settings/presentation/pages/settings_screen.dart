import 'package:app/core/widgets/buttons/primary_icon_button.dart';
import 'package:app/src/qayds/data/models/add_store_params.dart';
import 'package:app/src/profile/data/models/change_password_params.dart';
import 'package:app/src/profile/data/models/profile_dto.dart';

import '../../../main_index.dart';
import '../../../profile/data/models/edit_profile_params.dart';
import '../../../profile/domain/entities/profile.dart';
import '../../domain/entities/settings_types.dart';
import '../widgets/change_password_widget.dart';
import '../widgets/general_widget.dart';
import '../../../qayds/presentation/pages/stores_screen.dart';

class SettingsScreen extends BaseStatelessWidget {
  final Profile profile;
  final Function(EditProfileParams) onEditProfile;
  final Function() onDeleteAccount;
  final Function(ChangePasswordParams) onChangePassword;
  final Function(AddStoreParams) onAddStore;
  final Function(StoreDto) onEditStore;
  final Function(int) onDeleteStore;

  SettingsScreen(
      {Key? key,
      required this.profile,
      required this.onEditProfile,
      required this.onDeleteAccount,
      required this.onChangePassword,
      required this.onAddStore,
      required this.onEditStore,
      required this.onDeleteStore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    StreamStateInitial<String> settingsState = StreamStateInitial<String>();
    return SingleChildScrollView(
      child: StreamBuilder<String>(
          stream: settingsState.stream,
          initialData: SettingsTypes.store,
          builder: (context, snapshot) {
            String type = snapshot.data ?? SettingsTypes.general;
            return Column(
              children: [
                PrimaryIconButton(
                  icon: AppIcons.user_bold,
                  title: strings.general,
                  margin: 20.paddingStart + 100.paddingEnd + 10.paddingTop,
                  backgroundColor: type == SettingsTypes.general
                      ? context.primaryColor
                      : context.backgroundColor,
                  onPressed: () {
                    settingsState.setData(SettingsTypes.general);
                  },
                ),
                PrimaryIconButton(
                  icon: AppIcons.lock_bold,
                  title: strings.change_language,
                  margin: 20.paddingStart + 100.paddingEnd + 10.paddingTop,
                  backgroundColor: type == SettingsTypes.changePassword
                      ? context.primaryColor
                      : context.backgroundColor,
                  onPressed: () {
                    settingsState.setData(SettingsTypes.changePassword);
                  },
                ),
                PrimaryIconButton(
                  icon: AppIcons.store,
                  title: strings.store,
                  margin: 20.paddingStart + 100.paddingEnd + 10.paddingTop,
                  backgroundColor: type == SettingsTypes.store
                      ? context.primaryColor
                      : context.backgroundColor,
                  onPressed: () {
                    settingsState.setData(SettingsTypes.store);
                  },
                ),
                20.ph,
                Divider(color: context.primaryColor, thickness: 1),
                type == SettingsTypes.general
                    ? GeneralWidget(
                        profile: profile,
                        onEditProfile: onEditProfile,
                      )
                    : type == SettingsTypes.store
                        ? StoresScreen(
                            stores: profile.stores ?? [],
                            onSave: onAddStore,
                            onEdit: onEditStore,
                            onDelete: onDeleteStore,
                          )
                        : ChangePasswordWidget(
                            onSave: ()=> onChangePassword,
                          )
              ],
            );
          }),
    );
  }
}
