import 'package:flutter/material.dart';
import '../../../../../../config/ps_colors.dart';
import '../../../../../../core/vendor/provider/language/app_localization_provider.dart';
import '../../../../../../core/vendor/utils/utils.dart';

import '../../../../core/vendor/constant/ps_dimens.dart';
import '../../common/ps_square_progress_widget.dart';

class LoadingUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _imageWidget = Container(
      width: 90,
      height: 90,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          'assets/images/flutter_buy_and_sell_logo.png',
        ),
      ),
    );
    return Container(
        height: 400,
        color: Utils.isLightMode(context)
            ? PsColors.primary50
            : PsColors.primary50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _imageWidget,
                const SizedBox(
                  height: PsDimens.space16,
                ),
                Text('Sale Gates'.tr,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Utils.isLightMode(context)
                              ? PsColors.achromatic700
                              : PsColors.achromatic50,
                        )),
                const SizedBox(
                  height: PsDimens.space8,
                ),
                Container(
                    padding: const EdgeInsets.all(PsDimens.space16),
                    child: PsSquareProgressWidget()),
              ],
            )
          ],
        ));
  }
}
