import '../../../main_index.dart';

class IntroBg extends BaseStatelessWidget {
  IntroBg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      margin: 50.paddingBottom,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.intro_bg),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadiusDirectional.only(
          bottomEnd: Radius.circular(16),
          bottomStart: Radius.circular(16),
        ),
      ),
    );
  }
}
