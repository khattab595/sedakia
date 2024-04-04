import 'package:app/src/qayds/data/models/add_store_params.dart';
import 'package:app/src/qayds/presentation/widgets/store_item.dart';

import '../../../main_index.dart';
import '../../../profile/data/models/profile_dto.dart';

class StoresScreen extends BaseStatelessWidget {
  final List<StoreDto> stores;
  final Function(AddStoreParams) onSave;
  final Function(StoreDto) onEdit;
  final Function(int) onDelete;

  StoresScreen(
      {Key? key,
      required this.stores,
      required this.onSave,
      required this.onEdit,
      required this.onDelete,
      })
      : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController linkController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: stores.length,
        itemBuilder: (context, index) {
          return StoreItem(
            store: stores[index],
            onSave: onSave,
            onEdit: onEdit,
            onDelete: onDelete,
          );
        },
      );
  }
}
