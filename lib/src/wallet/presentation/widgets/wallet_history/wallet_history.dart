import 'package:app/src/main_index.dart';
import 'package:app/src/wallet/domain/entities/transaction.dart';
import 'package:app/src/wallet/presentation/widgets/wallet_history/request_data_item.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../../../../core/widgets/pagination/pagination_widget.dart';
import 'wallet_header.dart';

///  Created by harbey on 11/8/2023.
class WalletHistoryScreen extends StatelessWidget {
  final List<Transaction> logs;
  final Function()? onRefresh;
  final Function()? onLoading;

  WalletHistoryScreen(
      {Key? key,
      required this.logs,
      this.onRefresh,
      this.onLoading,})
      : super(key: key);

  RefreshController refreshController =
      RefreshController(initialRefresh: false);
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      //       controller: scrollController,
      itemBuilder: (context, index) {
        return RequestDataItem(
          isOdd: index.isOdd,
          transaction: logs[index],
        );
      },
    );
  }

  onSmartRefresh() {
    if (onRefresh != null) {
      onRefresh!();
    //  logsData = logs;
    }
    refreshController.resetNoData();
    refreshController.refreshCompleted();
    refreshController.loadComplete();
    refreshController.refreshToIdle();
  }

  onSmartLoading(bool isEmpty) {
    // if (onLoading != null) {
    //   onLoading!();
    // }
    // if (isFull) {
    //   refreshController.loadNoData();
    // } else {
    //   refreshController.loadComplete();
    // }
  }
}
