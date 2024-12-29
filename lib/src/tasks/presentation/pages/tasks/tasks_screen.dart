import 'package:app/core/widgets/icons/icon_text.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../../core/widgets/texts/row_texts.dart';
import '../../../../main_index.dart';
import '../../dataBase/dataBase.dart';

class TasksPage extends StatefulWidget {
  TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> _data = [];

  // Future<void> _addString() async {
  //   if (_controller.text.isNotEmpty) {
  //     await DatabaseHelper().insertString(_controller.text);
  //     _controller.clear();
  //     //  Navigator.pop(context);
  //     _fetchData();
  //   }
  // }

  Future<void> _fetchData() async {
    final data = await DatabaseHelper().getStrings();
    setState(() {
      _data = data;
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _updateString(int id) async {
    final newValue = await showDialog<String>(
      context: context,
      builder: (context) {
        final TextEditingController _editController = TextEditingController();
        return AlertDialog(
          title: Text('Edit String'),
          content: TextField(controller: _editController),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, _editController.text),
              child: Text('Save'),
            ),
          ],
        );
      },
    );

    if (newValue != null && newValue.isNotEmpty) {
      await DatabaseHelper().updateString(id, newValue);
      _fetchData();
    }
  }

  Future<void> _deleteString(int id) async {
    await DatabaseHelper().deleteString(id);
    _fetchData();
  }

  void _showAddStringModal() {
    final TextEditingController controller = TextEditingController();
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        context: context,
        isScrollControlled: true,
        backgroundColor: AppColors.cardColor,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        builder: (BuildContext context) {
          return Container(
            height: 400,
            color: AppColors.cardColor,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  20.ph,
                  PrimaryBoldText(label: "أضف مهمة"),
                  40.ph,
                  CustomTextField(
                    hintText: "أضف مهمة",
                    margin: 16.paddingHoriz,
                    controller: _controller,
                    maxLines: 5,
                  ),
                  60.ph,
                  PrimaryButton(
                    title: "اضافة",
                    margin: 16.paddingHoriz,
                    onPressed: () async {
                      await DatabaseHelper().insertString(_controller.text,"0");
                      _controller.clear();
                      _fetchData();
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "المهام",
          style: TextStyle(
              color: AppColors.primaryLight, fontWeight: FontWeight.w600),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryLight,
        onPressed: _showAddStringModal,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: _data.length == 0
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.empty, height: 200),
                  20.ph,
                  PrimaryBoldText(
                    label: "  لا توجد  مهام",
                    labelColor: Colors.black,
                  )
                ],
              ),
            )
          : ListView.builder(
              itemCount: _data.length,
              itemBuilder: (context, index) {
                final item = _data[index];
                return InkWell(
                    onTap: () async {
                      await DatabaseHelper()
                          .updateString(item['id'],item['complete'] == "0" ? "1" : "0" );
                      _fetchData();
                    },
                    child: Container(
                        decoration: Decorations.kDecorationBorderRadius(
                            radius: 8, borderColor: item['complete'] == "1"? AppColors.primaryLight: AppColors.greyColorB1),
                        margin: 16.paddingHoriz + 10.paddingVert,
                        padding: 16.paddingHoriz + 15.paddingVert,
                        child: Row(
                          children: [

                               Icon(
                              item['complete'] == "1"?  Icons.check_circle: Icons.circle_outlined,
                                color: item['complete'] == "1"? AppColors.primaryLight: AppColors.greyColorB1,
                              ),
                            7.pw,
                            Expanded(
                              child: PrimaryMediumText(
                                  label: item['value'],labelColor: item['complete'] == "1"? AppColors.primaryLight: AppColors.greyColorB1),
                            ),
                            7.pw,
                            InkWell(
                                onTap: () {
                                  _deleteString(item['id']);
                                },
                                child:   Icon(
                                  Icons.delete_outlined,
                                  size: 22,
                                  color:   item['complete'] == "1"? AppColors.primaryLight: AppColors.greyColorB1
                                )),
                          ],
                        )));
              }),
    );
  }
}
