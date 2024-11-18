import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(bank: bankShinhan, balace: 300000, accountTypeName: 'aaaa');
final bankAccountShinhan2 =
    BankAccount(bank: bankShinhan, balace: 40000, accountTypeName: 'bbbbb');
final bankAccountShinhan3 =
    BankAccount(bank: bankShinhan, balace: 3000050, accountTypeName: 'ccccc');
final bankAccountToss = BankAccount(bank: bankTtoss, balace: 300000);
final bankAccountKakao =
    BankAccount(bank: bankKakao, balace: 100000, accountTypeName: '');

// main() {
//   print(bankAccounts[0].accountTypeName);

//   final shinhanBank = bankMap["shinhan1"];
//   // for (final entry in bankMap.entries) {
//   //   print(entry.key +
//   //       ' : ' +
//   //       (entry.value.accountTypeName ?? entry.value.bank.name));
//   // }

// //리스트는 포함되는지 한바퀴 다 돌리는데
//   print(bankAccounts.contains(bankAccountShinhan1));
// //셋은 해쉬태그를 사용해서 있는지 없는지 바로 확인할수있음
//   print(bankSet.contains(bankAccountShinhan1));
//   //리스트는 중복 허용 맵이랑 셋은 중복허용안함

//   //리스트를 셋으로 바꾸는법
//   bankAccounts.toSet();
//   //셋을 리스트로 바꾸는거
//   bankSet.toList();
// }

//list
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao
];

//map 키 벨류 형태로 씀
final bankMap = {
  "shinhan1": bankAccountShinhan1,
  "shinhan2": bankAccountShinhan2
};

//set 데이터가 존재하는지 체크하는 형태로 많이 씀
final bankSet = {
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao
};
