import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../main_index.dart';
import '../../../data/models/register_params.dart';
import '../../../domain/entities/country.dart';
import '../../bloc/auth_bloc.dart';
import '../../widgets/auth_widget.dart';
import 'register_screen.dart';

// ignore: must_be_immutable
class RegisterPage extends BaseBlocWidget<DataSuccess<List<Country>>, AuthCubit> {
  RegisterPage({Key? key}) : super(key: key);


  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchCountries();
  }
  @override
  Widget build(BuildContext context) {
    return AuthWidget(
      isLogin: false,
      body: buildConsumer(context),
    );
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Country>> state) {
    return RegisterScreen(
      countries: state.data ?? [],
      onRegister: (RegisterParams params) {
        bloc.register(params);
        // Navigator.pushNamed(context, Routes.navigationPages);
      },
    );
  }

  @override
  void onSuccessDismissed() {
    Navigators.pushNamedAndRemoveUntil(Routes.homePage);
  }
}
