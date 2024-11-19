import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/f_my_stock.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/f_todays_discovery.dart';
import 'package:flutter/material.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  late final tabController = TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            actions: [
              ImageButton(
                imagePath: '$basePath/icon/stock_search.png',
                onTap: () {
                  context.showSnackbar('search button');
                },
              ),
              ImageButton(
                imagePath: '$basePath/icon/stock_calendar.png',
                onTap: () {
                  context.showSnackbar('calendar button');
                },
              ),
              ImageButton(
                imagePath: '$basePath/icon/stock_settings.png',
                onTap: () {
                  context.showSnackbar('settings button');
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                title,
                tabBar,
                if (currentIndex == 0)
                  const MyStockFragment()
                else
                  const TodaysDiscoveryFragment()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget get title => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          'toss stock'.text.size(24).bold.make(),
          width20,
          'S&P 500'
              .text
              .size(13)
              .bold
              .color(context.appColors.lessImportantText)
              .make(),
          width10,
          '3919.29'.text.size(13).bold.color(context.appColors.plus).make(),
        ],
      ).pOnly(left: 20);

  Widget get tabBar => Column(
        children: [
          TabBar(
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            labelStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            labelPadding: const EdgeInsets.symmetric(vertical: 20),
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
            indicatorColor: Colors.white,
            controller: tabController,
            tabs: [
              'my stock'.text.make(),
              'todays stock'.text.make(),
            ],
          ),
          const Line(),
        ],
      );
}
