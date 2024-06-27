import 'package:app/src/request_log/domain/entities/my_request.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../../../../core/bloc/base_cubit.dart';
import '../../../../../core/resources/data_state.dart';
import '../../../data/models/my_request_params.dart';
import '../../../domain/repositories/request_log_repo.dart';

@Injectable()
class RequestLogCubit extends BaseCubit {
  final RequestLogRepo repo;

  RequestLogCubit(this.repo);

  List<MyRequest> allRequests = [];
  int page = 0;
  MyRequestParams params = MyRequestParams();
  bool isLastPage = false;
  RefreshController refreshController = RefreshController(initialRefresh: false);
  Future<void> fetchRequestLog(int status, {bool isRefresh = true}) async {
    isRefresh ? {page = 1, allRequests.clear()} : page++;
    params = MyRequestParams(page: page.toString(), status: status);
    executeBuilder(
      isRefresh: isRefresh,
          () => repo.fetchMyRequest(params),
      onSuccess: (res) {
        isLastPage = res.pagination?.totalPages == page;
        final data = res.data?.map((e) => MyRequest.fromDto(e)).toList() ?? [];
        if (isLastPage) {
          refreshController.loadNoData();
        } else {
          refreshController.loadComplete();
        }
        allRequests.addAll(data);
        emit(DataSuccess<List<MyRequest>>(allRequests));
      },
    );
  }

}
