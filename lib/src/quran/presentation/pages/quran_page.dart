

import 'package:app/src/quran/presentation/pages/quran_screen.dart';
import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';



class QuranPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  QuranPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => "سورة الرحمن";

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return QuranScreen(

    );
  }

}

