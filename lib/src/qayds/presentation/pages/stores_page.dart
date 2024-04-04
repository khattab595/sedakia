import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/data/models/profile_dto.dart';
import '../bloc/stores_bloc.dart';
import '../widgets/store_item.dart';
import 'stores_screen.dart';

class StoresPage
    extends BaseBlocWidget<DataSuccess<List<StoreDto>>, StoresCubit> {
  StoresPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchStores();
  }

  @override
  Widget build(BuildContext context) {
    return mainFrame(
      floatingActionButton: FloatingActionButton(
        onPressed: () => StoreItem.showAddStoreDialog(context,
            onSave: (params) => bloc.addStore(params)),
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
      body: buildConsumer(context),
    );
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<StoreDto>> state) {
    return StoresScreen(
      stores: state.data!,
      onSave: (params) => bloc.addStore(params),
      onEdit: (store) => bloc.editStore(store),
      onDelete: (id) => bloc.deleteStore(id),
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.stores;
  }

  @override
  void onSuccessDismissed() {
    bloc.fetchStores();
  }
}
