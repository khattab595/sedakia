import '../../../main_index.dart';

class SliderContent extends BaseStatelessWidget {
  final String imgPath, description;

  SliderContent({super.key, required this.imgPath, required this.description});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network(
          imgPath,
          fit: BoxFit.fill,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: theme.textTheme.titleLarge!.copyWith(
            fontSize: 20,
          ),
        ),
        SizedBox(),
      ],
    );
  }
}
