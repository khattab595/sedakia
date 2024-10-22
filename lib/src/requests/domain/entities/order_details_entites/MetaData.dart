import '../../../data/models/order_details_dto.dart';

class MetaData {
  MetaData({
      this.key, 
      this.value,});


  String? key;
  String? value;

  factory MetaData.fromDto(MetaDataModel json) {
    return MetaData(
     key: json.key,
     value: json.value,
    );
  }

}