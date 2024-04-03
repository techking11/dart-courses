import 'dart:io';
// user regiester
// earn your money (including user money)
// 1 to 9
// win lose ( +2 -2)
// check user can play to continue if can

/// This class is guesses number between 0 and 9 if you are win you can get money
/// ```
final String a = "my name is jack";

/// ```

void main() {
  // ask the user for their name and balance
  stdout.write("Please enter your name: ");
  var nameInput = stdin.readLineSync()!;

  while (!validateUsername(nameInput)) {
    stdout.write("Please enter a valid username: ");
    nameInput = stdin.readLineSync()!;
  }

  stdout.write("Please enter your starting balance: ");
  var balanceInput = stdin.readLineSync()!;

  while (!validateBalance(balanceInput)) {
    stdout.write("Please enter a valid balance: ");
    balanceInput = stdin.readLineSync()!;
  }

  var user = User(nameInput, int.parse(balanceInput));

  // ask the user to place a bet
  stdout.write(" Please enter your bet amount: ");
  var input = stdin.readLineSync();

  // try to parse the user input as an integer

  var bet = int.parse(input!);

  // check if the bet is greater than the user's balance
  if (bet > user.balance || bet == 0) {
    print("You don't have enough money to place that bet.");
    stdout.write(" Please enter your bet amount: ");
    input = stdin.readLineSync();
  }

  // ask the user to guess a number between 1 and 9
  stdout.write("Please guess a number between 1 and 9: ");
  input = stdin.readLineSync();
  RegExp regex = RegExp(r'[a-zA-Z\s]+');

  // try to parse the user input as an integer
  var guess = int.tryParse(input!);

  if (guess == null || guess < 1 || guess < 9 || guess == 0) {
    print("Invalid guess. Please enter a number between 1 and 9.");
    stdout.write("Please guess a number between 1 and 9: ");
    input = stdin.readLineSync();

    // try to parse the user input as an integer
    guess = int.tryParse(input!);
  }
  if (regex.hasMatch(input)) {
    print("Invalid guess. Please enter a number between 1 and 9.");
    stdout.write("Please guess a number between 1 and 9: ");
    input = stdin.readLineSync();

    // try to parse the user input as an integer
    guess = int.tryParse(input!);
  }

  print(
      "user name : ${user.name} |  balance : ${user.balance} | betAmount:${bet} | guessnumber : ${guess}");
}

bool validateBalance(String input) {
  var balance = int.tryParse(input);

  if (balance == null || balance <= 0) {
    print("Invalid balance. Balance must be a positive integer.");
    return false;
  }

  return true;
}

bool validateUsername(String input) {
  if (input.contains(" ")) {
    print("Invalid username. Username cannot contain spaces.");
    return false;
  }

  if (RegExp(r'\d').hasMatch(input)) {
    print("Invalid username. Username cannot contain numbers.");
    return false;
  }

  return true;
}

class User {
  //user name
  late String name;
  //balance
  late int balance;
  //bet amount
  int? bet;
  //guess number
  int? guessnumber;
  //earnmoney
  int? earnmoney;

  User(this.name, this.balance);
}
