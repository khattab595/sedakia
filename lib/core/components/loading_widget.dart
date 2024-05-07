import '../../src/main_index.dart';

class LoadingView extends StatelessWidget {
  LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
        Image.asset(AppImages.splash,
          height: 400,fit: BoxFit.cover,)
          ],
        ),
      ),
    );
  }
}

class SmallLoadingView extends BaseStatelessWidget {
  final double? height;

  SmallLoadingView({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 15.0,
              width: 15.0,
              child: CircularProgressIndicator(
                strokeWidth: 1,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
