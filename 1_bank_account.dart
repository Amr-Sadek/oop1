class BankAccount {
  int? accountId;
  double balance;

  BankAccount(this.balance);

  BankAccount.zero() : balance = 0;

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Insufficient funds");
    }
  }

  void deposit(double amount) {
    balance += amount;
  }
}
