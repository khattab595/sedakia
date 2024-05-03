import 'package:app/src/my_courses/domain/entities/course.dart';
import '../../../../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../bloc/favorite_bloc.dart';
import 'favorite_screen.dart';

class FavoritePage extends BaseBlocWidget<DataSuccess<List<Course>>, FavoriteCubit> {
  FavoritePage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchFavoriteData();
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Course>> state) {
    return FavoriteScreen(courses: state.data!,);
  }
  @override
  String? title(BuildContext context) {
    return strings.favorite;
  }
}
