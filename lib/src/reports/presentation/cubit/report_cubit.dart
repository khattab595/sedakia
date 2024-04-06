import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';

import '../../domain/use_cases/reports_usecase.dart';

@Injectable()
class ReportsCubit extends BaseCubit {
  final ReportsUseCase usecase;

  ReportsCubit(this.usecase);

}
