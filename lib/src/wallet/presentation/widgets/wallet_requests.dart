import 'package:app/src/main_index.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/wallet_constatnts.dart';

///  Created by harbey on 10/16/2023.
class WalletItems extends BaseStatelessWidget {
  final Function(String) onTap;

  WalletItems({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String type = WalletConstants.REQUESTSMONEY;
    return Container(
      width: double.infinity,
      height: 80,
      padding: 10.paddingHoriz,
      child: StatefulBuilder(builder: (context, setState) {
        return Row(
          children: [
            Expanded(
              flex: 5,
              child: InkWell(
                onTap: (){
                  setState(() {
                    type = WalletConstants.REQUESTSMONEY;
                    onTap(type);
                  });
                },
                overlayColor: MaterialStateProperty.all(context.primaryColor),
                child: RequestsMoney(
                  isSelected: type == WalletConstants.REQUESTSMONEY,
                ),
              ),
            ),
            10.pw,
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: WalletItem(
                      title: context.strings.payment_methods,
                      icon: AppIcons.payment_card,
                      isSelected: type == WalletConstants.PAYMENTMETHODS,
                      onTap: () {
                        setState(() {
                          type = WalletConstants.PAYMENTMETHODS;
                          onTap(type);
                        });
                      },
                    ),
                  ),
                  10.ph,
                  Expanded(
                    child: WalletItem(
                      title: context.strings.wallet_history,
                      icon: AppIcons.wallet_history,
                      isSelected: type == WalletConstants.WALLETHISTORY,
                      onTap: () {
                        setState(() {
                          type = WalletConstants.WALLETHISTORY;
                          onTap(type);
                        });
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}

class WalletItem extends StatelessWidget {
  final String title;
  final String icon;
  final Color? color;
  final bool isSelected;
  final Function()? onTap;

  const WalletItem(
      {Key? key,
      required this.title,
      required this.icon,
        this.color,
      this.isSelected = false,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: 4.paddingAll,
        color: isSelected ? context.primaryColor : context.blue_EC,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppIcon(icon: icon, size: 16, color: color ?? context.cardColor),
            6.pw,
            Flexible(
              child: Text(
                title,
                style: context.labelLarge.copyWith(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RequestsMoney extends StatelessWidget {
  final bool isSelected;
  const RequestsMoney({Key? key, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 10.paddingVert + 10.paddingHoriz,
      color: isSelected ? context.primaryColor : context.blue_E0,
      height: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Align(
              alignment: AlignmentDirectional.centerEnd,
              child: AppIcon(
                  icon: AppIcons.request_money,
                  size: 50,
                  color: context.cardColor)),
          FittedBox(
            child: Text(
              context.strings.requests_money,
              style: context.labelMedium.copyWith(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
