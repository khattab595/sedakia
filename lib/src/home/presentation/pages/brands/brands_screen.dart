import '../../../../main_index.dart';
import 'brands_list.dart';

class BrandsScreen extends BaseStatelessWidget {
  BrandsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: context.strings.dark_mode,
      backgroundColor: context.scaffoldBackgroundColor,
      body: BrandsList(),
    );
  }
}
