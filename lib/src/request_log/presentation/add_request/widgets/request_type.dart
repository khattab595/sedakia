import '../../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../main_index.dart';

class RequestType extends BaseStatelessWidget {
  final void Function(String)? onChanged;
  String?  value;
  RequestType({super.key, this.onChanged, this.value});

  @override
  Widget build(BuildContext context) {
    List<DropDownItem>  data=  [
      DropDownItem(
        id: 'إجازة',
        title: strings.holiday,
      ),
      DropDownItem(
        id: 'سلفة',
        title: strings.advance_payment,
      ),  DropDownItem(
        id: 'استقالة',
        title: strings.resignation,
      ),
    ];
    return DropDownField(
      height: 50,
      borderRadius: 10,
      hint: strings.type_of_request,
      items: data,
      onChanged: (item) {
        onChanged?.call(item.id ?? '');
      },
      value: value,

    );
  }


}

class HolidayType extends BaseStatelessWidget {
  final void Function(String)? onChanged;
  String?  value;
  HolidayType({super.key, this.onChanged, this.value});

  @override
  Widget build(BuildContext context) {
    List<DropDownItem>  data=  [
      DropDownItem(
        id: 'إجازة سنوية',
        title: strings.annual_vacation,
      ),DropDownItem(
        id: 'إجازة مرضية',
        title: strings.sick_leave,
      ),
      DropDownItem(
        id: ' إجازة اضطرارية ',
        title: strings.emergenc_leave,
      ),  DropDownItem(
        id: 'بيون راتب',
        title: strings.pune_salary,
      ),
    ];
    return DropDownField(
      height: 50,
      borderRadius: 10,
     // title:strings.type_of_holiday ,
      hint: strings.type_of_holiday,
      items: data,
      onChanged: (item) {
        onChanged?.call(item.id ?? '');
      },
      value: value,

    );
  }


}