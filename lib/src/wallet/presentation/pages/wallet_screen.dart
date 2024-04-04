import 'package:app/src/wallet/presentation/payment_methods/pages/payment_methods_page.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../../home/data/models/home_dto.dart';
import '../../../home/presentation/widgets/home_header.dart';
import '../../../main_index.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/entities/wallet_constatnts.dart';
import '../transactions/pages/transactions_page.dart';
import '../widgets/requests_money/requests_money_list.dart';
import '../widgets/wallet_history/wallet_history.dart';
import '../widgets/wallet_history/wallet_history_page.dart';
import '../widgets/wallet_requests.dart';

class WalletScreen extends BaseStatelessWidget {
  final StreamStateInitial<List<Transaction>?>? walletLogStream;

  WalletScreen(
      {Key? key,
       this.walletLogStream})
      : super(key: key);

  RefreshController refreshController =
      RefreshController(initialRefresh: false);
  ScrollController scrollController = ScrollController();
  List<Transaction> logsData = [];

  @override
  Widget build(BuildContext context) {
    StreamStateInitial<String> walletTypeStream = StreamStateInitial<String>();
    return NestedScrollView(
      controller: scrollController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            toolbarHeight: 195,
            floating: false,
            backgroundColor: context.scaffoldBackgroundColor,
            leading: const SizedBox.shrink(),
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: 16.paddingVert,
                child: Column(
                  children: [
                    HomeHeader(statistics: [
                      Statistic(
                        title: 'Total',
                        value: 0,
                        color: '#4CA8E5',
                      ),
                      Statistic(
                        title: 'Pending',
                        value: 0,
                        color: '#F0B918',
                      ),
                      Statistic(
                        title: 'Available',
                        value: 0,
                        color: '#2AC267',
                      ),
                    ]),
                    16.ph,
                    WalletItems(
                      onTap: (t) {
                        walletTypeStream.setData(t);
                      },
                    ),
                    16.ph,
                    Divider(
                      color: context.primaryColor,
                      height: 1.2,
                      thickness: 1.2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ];
      },
      body: StreamBuilder<String>(
        stream: walletTypeStream.stream,
        initialData: WalletConstants.REQUESTSMONEY,
        builder: (context, snapshot) {
          final type = snapshot.data;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: snapshot.data == WalletConstants.REQUESTSMONEY ? 300 : 500,
            child: type == WalletConstants.REQUESTSMONEY
                ? TransactionsPage(
                  )
                : type == WalletConstants.PAYMENTMETHODS
                    ?  PaymentMethodsPage()
                    : WalletHistoryPage(),
          );
        },
      ),
    );
  }
}
