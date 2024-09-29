//Implement a BankAccount class in Dart that includes properties for accountNumber,
//balance, and methods to deposit, withdraw, and check the balance.

void main() {
  Bank user1 = Bank(acc_name: 'Saba', acc_balance: 1000);
  // user1.deposit(amount: 500);
  // user1.deposit(amount: 1500);
  // user1.withDraw(amount: 100);
  // user1.balanceCheck();

  Bank user2 = Bank(acc_name: 'Saima', acc_balance: 1500);
  //user2.withDraw(amount: 2000);
  // user2.balanceCheck();

  user1.transfer(user2, 200);
  user1.balanceCheck();
  user2.balanceCheck();
}

class Bank {
  var acc_name = '';
  var acc_balance;
  List<String> Trans = [];

  //Constructor 1 way (Default)
/*  Bank({required acc_name, required acc_balance}) {
    //this use the 'parent' scope, leaving the current scope
    this.acc_name = acc_name;
    this.acc_balance = acc_balance;
  }*/

  //Constructor 2 way (Default)
  Bank({required this.acc_name, required this.acc_balance});

  balanceCheck() {
    print('Account Name: $acc_name');
    print('Current Balance: $acc_balance');
  }

  transfer(Bank targetacc, amount) {
    if (amount > acc_balance)
      print('Not enough amount');
    else {
      targetacc.deposit(amount: amount);
      withDraw(amount: amount);
      print('Transfer successful');
    }
  }

  deposit({required amount}) {
    acc_balance = acc_balance + amount;
    print('Deposit Successful.');
    Trans.add('Deposit $amount');
  }

  withDraw({required amount}) {
    if (!(amount > acc_balance)) {
      acc_balance = acc_balance - amount;
      print('Withdraw successful');
      Trans.add('Withdraw: $amount');
    } else {
      print('Insufficient balance');
    }
  }

  TransHistory() {
    print('Transaction History');
    print(Trans);
  }
}
