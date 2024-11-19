abstract mixin class StockPercentageDataProvider {
  //abstract으로 이 클래스를 추상화 시킬수있음 그러면 currentPrice이 값이 있다고
  //get을 써서가정할수있음
  int get currentPrice;
  int get yesterdayClosePrice;

  double get todayPercentage =>
      ((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100);

  String get todayPercentageString => "$symbol$todayPercentage%";

  bool get isPlus => currentPrice > yesterdayClosePrice;
  bool get isSame => currentPrice == yesterdayClosePrice;
  bool get isMinus => currentPrice < yesterdayClosePrice;

  String get symbol => isSame
      ? ""
      : isPlus
          ? "+"
          : "-";
}
