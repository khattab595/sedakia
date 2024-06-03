import 'dart:io';

import 'package:app/core/utils/helper_methods.dart';
import 'package:app/core/widgets/text-field/custom_text_field.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../main_index.dart';
import '../widgets/filter_date_widget.dart';
import '../widgets/request_type.dart';

class AddRequestScreen extends BaseStatelessWidget {
  // final List<Course>? courses;
  //final Function(dynamic) onAddRequest;

  AddRequestScreen({
    Key? key,
    //  required this.courses, required this.onAddRequest
  }) : super(key: key);
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String type = '';
  TextEditingController reasonController = TextEditingController();
  TextEditingController moneyController = TextEditingController();
  TextEditingController attachmentsController = TextEditingController();
  StreamStateInitial<String> isShowTime = StreamStateInitial();

  @override
  Widget build(BuildContext context) {
    List<File> files = [];
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            30.ph,
            Container(
              margin: 20.paddingHoriz,
              padding: 20.paddingTop + 15.paddingHoriz,
              decoration: Decorations.kDecorationBorderRadius(
                  borderColor: dividerColor, radius: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryMediumText(
                    label: strings.select_the_request_type,
                    fontSize: 20,
                  ),
                  13.ph,
                  RequestType(
                    onChanged: (item) {
                      type = item ?? '';
                      isShowTime.setData(type);
                    },
                  ),
                  13.ph,
                  StreamBuilder<String>(
                      stream: isShowTime.stream,
                      builder: (context, snapshot) {
                        return snapshot.data == "إجازة"
                            ? Column(
                                children: [
                                  HolidayType(
                                    onChanged: (value) {},
                                  ),
                                  13.ph,
                                  FilterDateWidget(
                                    onFilter: (from, to) {},
                                  )
                                ],
                              )
                            : 0.pw;
                      }),
                  13.ph,
                  StreamBuilder<String>(
                      stream: isShowTime.stream,
                      builder: (context, snapshot) {
                        return snapshot.data == "سلفة"
                            ? CustomTextField(
                                hintText: strings.enter_the_advance_amount,
                                radius: 10,
                                keyboardType: TextInputType.number,
                                title:
                                    "${strings.enter_the_advance_amount} (ريال سعودي)",
                                controller: moneyController,
                              )
                            : 0.ph;
                      }),
                  StreamBuilder<String>(
                      stream: isShowTime.stream,
                      builder: (context, snapshot) {
                        return CustomTextField(
                          hintText: snapshot.data == "سلفة"
                              ? strings.urgent_debt_payment
                              : strings.sick_leave,
                          radius: 10,
                          title: strings.reason,
                          maxLines: 2,
                          controller: reasonController,
                        );
                      }),
                  5.ph,
                  Container(
                    padding: 10.paddingHoriz,
                    height: 70,
                    margin: 20.paddingBottom,
                    decoration: Decorations.kDecorationOnlyRadius(
                      radius: 10,
                      color: greyColor.withOpacity(0.1),
                    ),
                    child: StatefulBuilder(
                      builder: (context, setState) {
                        return Row(
                          children: [
                            AppIconButton(
                              icon: AppIcons.desc,
                              size: 30,
                              onPressed: () async {
                                files =
                                    await HelperMethods.getListImagePicker();

                                setState(() {});
                              },
                            ),
                            10.pw,
                            files.length == 0
                                ? Text(
                                    strings.choose_file,
                                    style: context.displaySmall
                                        .copyWith(fontSize: 16),
                                  )
                                : SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: files
                                          .map(
                                            (e) => Stack(
                                              alignment:
                                                  AlignmentDirectional.topEnd,
                                              children: [
                                                Container(
                                                  margin: 15.paddingVert +
                                                      15.paddingEnd,
                                                  child: Image.file(
                                                    e,
                                                    width: 50,
                                                    height: 50,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  end: 0,
                                                  top: 0,
                                                  child: SizedBox(
                                                    height: 20,
                                                    width: 20,
                                                    child: IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          files.remove(e);
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        Icons.remove_circle,
                                                        size: 20,
                                                      ),
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            50.ph,
            PrimaryButton(
              title: strings.send_request,
              margin: 20.paddingHoriz,
              onPressed: () {},
              fontSize: 20,
            )
          ],
        ),
      ),
    );
  }
}
