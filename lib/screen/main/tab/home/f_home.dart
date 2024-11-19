import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/round_button_theme.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/dialog/d_message.dart';
import 'package:fast_app_base/screen/main/tab/home/bank_accounts_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/w_bank_account.dart';
import 'package:flutter/material.dart';

import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_confirm.dart';
import '../../s_main.dart';
import 'w_ttoss_app_bar.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      child: Stack(
        children: [
          RefreshIndicator(
            edgeOffset: TtossAppBar.appBarHeight,
            onRefresh: () async {},
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                  top: TtossAppBar.appBarHeight,
                  bottom: MainScreenState.bottomNavigationBarBorderRadius),
              child: Column(
                children: [
                  height10,
                  BigButton("Toss bank", onTap: () {
                    context.showSnackbar("click toss bank");
                  }),
                  height10,
                  RoundedContainer(
                      child: Column(
                    children: [
                      "zasan".text.bold.white.make(),
                      height5,
                      ...bankAccounts.map((e) => BankAccountWidget(e)).toList(),
                    ],
                  ))
                ],
              ).pSymmetric(h: 20),
            ),
          ),
          const TtossAppBar()
        ],
      ),
    );
  }
}
