//Implement a BankAccount class in Dart that includes properties for accountNumber,
//balance, and methods to deposit, withdraw, and check the balance.

void main() {
  Bank user1 = Bank(acc_name: 'Saba', acc_balance: 1000);
  user1.deposit(amount: 500);
  user1.balanceCheck();

  Bank user2 = Bank(acc_name: 'Saima', acc_balance: 1500);
  user2.withDraw(amount: 2000);
  user2.balanceCheck();
}

class Bank {
  var acc_name = '';
  var acc_balance;

  Bank({required acc_name, required acc_balance}) {
    this.acc_name = acc_name; //this use the 'parent' scope, leaving the current scope
    this.acc_balance = acc_balance;
  }
  balanceCheck() {
    print('Account Name: $acc_name');
    print('Current Balance: $acc_balance');
  }

  deposit({required amount}) {
    acc_balance = acc_balance + amount;
    print('The deposit of $amount is added to your account');
  }

  withDraw({required amount}) {
    if (!(amount > acc_balance)) {
      acc_balance = acc_balance - amount;
      print('The $amount is withdraw from your account');
    } else {
      print('Insufficient balance');
    }
  }
}
