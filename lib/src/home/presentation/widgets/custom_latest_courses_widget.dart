import '../../../courses/domain/entities/course.dart';
import '../../../favorite/data/models/favorite_params.dart';
import '../../../main_index.dart';
import 'custom_latest_course_item.dart';

class CustomLatestCoursesWidget extends BaseStatelessWidget {
  final StreamStateInitial<List<Course>?> recentlyCoursesStream;
  final Function(FavoriteParams) onFavorite;

  CustomLatestCoursesWidget({super.key, required this.recentlyCoursesStream, required this.onFavorite});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: StreamBuilder<List<Course>?>(
        stream: recentlyCoursesStream.stream,
        builder: (context, snapshot) {
          return snapshot.data == null
              ? LoadingView()
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: 16.paddingEnd,
                      child: CustomLatestCourseItem(
                        myCourse: snapshot.data![index],
                        onFavorite: onFavorite,
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
