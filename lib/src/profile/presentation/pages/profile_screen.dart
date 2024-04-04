
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';

class ProfileScreen extends BaseStatelessWidget {
  final Profile profile;
  final VoidCallback onDeleteAccount;
  ProfileScreen({Key? key, required this.profile, required this.onDeleteAccount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                margin:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  shape: BoxShape.circle,
                ),
                child: const AppIcon(
                  icon: AppIcons.picker,
                  size: 30,
                ),
              ),
              Positioned(
                  left: 86,
                  top: 80,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 3),
                    ),
                    child: Text(
                      strings.captain.substring(2),
                      style: Theme.of(context).textTheme.bodyMedium!,
                    ),
                  )),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: Decorations.kDecorationOnlyRadius(color: Colors.white, radius: 14),
            child: Column(
              children: [
                RowChildren(
                  icon: AppIcons.person,
                  title: profile.name,
                ),
                RowChildren(
                  icon: AppIcons.phoneOutline,
                  title: profile.phone,
                ),
                RowChildren(
                  icon: AppIcons.email,
                  title: profile.email,
                  isLast: true,
                ),
              ],
            ),
          ),
          const Spacer(),
          PrimaryButton(
            title: strings.delete_account,
            onPressed: () {
              onDeleteAccount();
            },
            backgroundColor: Colors.red,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            borderRadius: const BorderRadius.all(Radius.circular(14)),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class RowChildren extends StatelessWidget {
  final String icon;
  final String title;
  final bool isLast;

  const RowChildren(
      {Key? key, required this.icon, required this.title, this.isLast = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 16, bottom: 8),
          child: Row(
            children: [
              AppIcon(icon: icon),
              const SizedBox(width: 12),
              Text(title, style: Theme.of(context).textTheme.headlineMedium!),
            ],
          ),
        ),
        if (!isLast)
          Divider(
            color: Theme.of(context).dividerColor,
            thickness: 1,
          )
      ],
    );
  }
}
