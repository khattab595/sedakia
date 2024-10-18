import 'package:app/core/utils/helper_methods.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../../core/widgets/button_sheet/custom_bottom_sheet.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/buttons/selection_button_chip.dart';
import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../core/widgets/text-field/search_text_field.dart';
import '../../../main_index.dart';
import '../bloc/requests_bloc.dart';
import 'requests_screen.dart';

class RequestsPage extends BaseBlocWidget<UnInitState, RequestsBloc> {
  RequestsPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchInitialData();
  // }

  @override
  String? title(BuildContext context) {
    return strings.request_log;
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return mainFrame(
        body: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SearchTextField(
                controller: searchController,
                onChanged: (value) {
                  // bloc.searchRequests(value);
                },
              ),
            ),
            InkWell(
              onTap: () {
                show(context);
              },
              child: Icon(
                Icons.menu,
                color: primaryColor,
                size: 30,
              ),
            ),
            10.pw,
          ],
        ),
        Expanded(
          child: buildConsumer(context),
        ),
      ],
    ));
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return RequestsScreen();
  }

  void show(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: 15.paddingHoriz+20.paddingVert+20.paddingTop,
          child: Column(
            children: [
              DropDownField(
                  title: strings.status,
                  items: const [
                    DropDownItem(title: "مكتمل"),
                    DropDownItem(title: "مرفوض"),
                  ],
                  onChanged: (item) {}),
              15.ph,
              CustomTextField(
                title: strings.search_by_date,
                controller: dateController,
               onTap: (){
                  HelperMethods.datePicker(context);
               },
              ),
              20.ph,
              customButton(
                  buttonText: strings.search,
                  buttonColor: primaryColor,
                  buttonTextColor: whiteTextColor,
                  buttonFunc: () {})

            ],
          ),
        );
      },
    );
  }
}
