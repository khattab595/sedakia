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