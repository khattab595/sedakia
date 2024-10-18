
import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../../auth/domain/repositories/auth_repo.dart';
import '../../../auth/domain/repositories/forgot_password_repo.dart';
import '../../domain/repositories/more_repo.dart';

@Injectable()
class ProfileBloc extends BaseCubit {
  final ProfileRepo repo;
  final AuthRepo authRepo;
  final ForgotPasswordRepo forgotPasswordRepo;

  ProfileBloc(this.repo, this.authRepo, this.forgotPasswordRepo);



  }




