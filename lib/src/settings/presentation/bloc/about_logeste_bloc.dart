import 'package:app/src/settings/domain/repositories/settings_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../domain/entities/about.dart';

@Injectable()
class AboutCubit extends BaseCubit {
  final SettingsRepo usecase;

  AboutCubit(this.usecase);

  fetchAbout(AboutType type) async {
    executeSuccess(() => type == AboutType.aboutUs
        ? usecase.fetchAboutUs()
        : usecase.fetchTermsConditions());
  }
}
