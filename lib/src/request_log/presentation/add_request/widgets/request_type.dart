import '../../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../main_index.dart';

class RequestType extends BaseStatelessWidget {
  final List<DropDownItem>? leaveTypes;
  final void Function(String)? onChanged;
  String? value;

  RequestType({super.key, this.onChanged, this.value, this.leaveTypes});

  @override
  Widget build(BuildContext context) {
    return DropDownField(
      height: 50,
      borderRadius: 10,
      hint: strings.type_of_request,
      items: leaveTypes ?? [],
      onChanged: (item) {
        onChanged?.call(item.id ?? '');
      },
      value: value,
    );
  }
}

class HolidayType extends BaseStatelessWidget {
  final List<DropDownItem>? leaveSubTypes;
  final void Function(String)? onChanged;
  String? value;

  HolidayType({super.key, this.onChanged, this.value, this.leaveSubTypes});

  @override
  Widget build(BuildContext context) {
    return DropDownField(
      height: 50,
      borderRadius: 10,
      // title:strings.type_of_holiday ,
      hint: strings.type_of_holiday,
      items: leaveSubTypes ?? [],
      onChanged: (item) {
        onChanged?.call(item.id ?? '');
      },
      value: value,
    );
  }
}
