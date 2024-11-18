import 'vo_bank.dart';

class BankAccount {
  final Bank bank;
  int balace;
  final String? accountTypeName;

  BankAccount({
    required this.bank,
    required this.balace,
    this.accountTypeName,
  });
}
