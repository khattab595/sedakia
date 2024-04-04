

import '../../../main_index.dart';
import 'favorite_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<String> favorites;
  const FavoritesScreen({Key? key, required this.favorites}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: favorites.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.68,
      ),
      padding: 16.paddingVert + 6.paddingHoriz,
      itemBuilder: (context, index) {
        return FavoriteItem(

        );
      },
    );
  }
}

