import '../../../main_index.dart';

class IntroBg extends BaseStatelessWidget {
  IntroBg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.intro,
      fit: BoxFit.scaleDown,
    );
  }
}
