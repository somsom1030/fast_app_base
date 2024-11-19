import 'package:fast_app_base/common/common.dart';

enum NotificationType {
  tossPay('toss pay', '$basePath/notification/notification_toss.png'),
  luck('luch ticket', '$basePath/notification/notification_luck.png'),
  people('aaaaaaaa', '$basePath/notification/notification_people.png'),
  stock('stock tip', '$basePath/notification/notification_stock.png'),
  walk('walk', '$basePath/notification/notification_walk.png'),
  moneyTip('today money tip', '$basePath/notification/notification_idea.png');

  const NotificationType(this.name, this.iconPath);

  final String iconPath;
  final String name;
}
