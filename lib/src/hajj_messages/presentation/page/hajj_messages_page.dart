

import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/texts/texts.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import 'hajj_messages_screen.dart';


class  HajjMessagesPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
   HajjMessagesPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.hajj_messages;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return AppScaffold(
      floatingActionButton: InkWell(
        onTap: () {
         pushNamed(Routes.detailsMessagePage);
        },
        child: Container(
            height: 69,
            width: 69,
            padding: 9.paddingHoriz+18.paddingTop+7.paddingBottom+5.paddingStart,
            decoration: Decorations.kDecorationBorderRadius(
              radius: 100,
              color: primaryColor,
             // borderColor: primaryColor,
            ),
            child: const BoldText(label: "ارسال رسالة",fontSize: 15,labelColor: kPrimaryLight,)),
      ),
      body:HajjMessagesScreen(
      
      ),
    );
  }

}

