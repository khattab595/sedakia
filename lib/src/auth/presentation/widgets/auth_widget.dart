
import '../../../../core/widgets/buttons/label_button.dart';
import '../../../main_index.dart';
import 'change_language_popup.dart';

class AuthWidget extends BaseStatelessWidget {
  final Widget body;
  final bool isLogin;
  AuthWidget({Key? key, required this.body, this.isLogin = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.centerStart,
            end: AlignmentDirectional.centerEnd,
            colors: [
              context.primaryColor,
              context.primaryColor,
            ],
          ),
        ),
        child: Column(
          children: [
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     alignment: AlignmentDirectional.topStart,
            //     padding: const EdgeInsetsDirectional.only(top: 50, start: 20),
            //       child: ChangeLanguagePopup()),
            // ),
            Padding(
              padding: 20.paddingHoriz + (kToolbarHeight).paddingTop,
              child: Image.asset(
                AppImages.quran,
                height: 50,
                fit: BoxFit.fill,
              ),
            ),
            (isLogin ? 50 : 0).ph,
            Expanded(
              flex: isLogin ? 2 : 4,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20),
                      child: Text(
                        isLogin ? strings.welcome_back : strings.welcome,
                        style: context.labelSmall.copyWith(
                            fontSize: 26
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: Decorations.kDecorationOnlyRadius(color: Color(0xff29A7F9), radius: 25),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                isLogin ? strings.login : strings.sign_up,
                                style: context.labelMedium.copyWith(
                                    fontSize: 26
                                ),
                              ),
                              const SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  isLogin ?
                                  Navigator.pushNamed(context, Routes.register) : Navigator.pop(context);
                                },
                                child: Text(
                                  isLogin ? strings.sign_up : strings.login,
                                  style: context.labelSmall.copyWith(
                                      fontSize: 18
                                  ),
                                ),
                              ),

                            ],
                          ),
                          body,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
