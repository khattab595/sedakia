import '../../../../main_index.dart';

class StepperLines extends BaseStatelessWidget {
  final StreamStateInitial<int> controllerStream;

  StepperLines({Key? key, required this.controllerStream}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: controllerStream.stream,
      initialData: 0,
      builder: (context, snapshot) {
        int page = snapshot.data ?? 0;
        print('page: $page');
        return Padding(
          padding: 20.paddingVert,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildLine(true),
              20.pw,
              buildLine(page >= 1),
              20.pw,
              buildLine(page >= 2),
            ],
          ),
        );
      }
    );
  }

  buildLine(bool isActive) {
    return Expanded(
      child: Container(
        height: 5,
        margin: 5.paddingVert,
        decoration: Decorations.kDecorationOnlyRadius(
          color: isActive ? primaryColor : dividerColor,
        ),
      ),
    );
  }
}
