import 'dart:io';
import 'dart:math';
import 'dart:async';

int user_total_amount = 1000;
int use_money = 0;
int user_lottery_number = 0;
void main() {
  print("| Welcome From Lottery Game.");
  print("----------------------------------------------------------------\n");
  
  print("| Your total amount is : ${user_total_amount}");
  print("----------------------------------------------------------------\n");    
  lotteryNumber();
  
}

void lotteryNumber()  {    
  startUp();
  // print(use_money);
  // print(user_total_amount);
    
  winnerOrFail();
  continuingGame(use_money);
  // await lotteryWaitingTime();
  
}

int randomLotteryNumber() {
  Random random = Random();
  int random_num = random.nextInt(100);
  return random_num;
}

Future<void> lotteryWaitingTime() async {
  print("\n----------------------------------------------------------------");
  print('| Waiting ...');
  print("----------------------------------------------------------------\n");
  await Future.delayed(Duration(seconds: 5));
}

void startingMoney() {
  
  // print(user_total_amount);
  if( user_total_amount == 0 ) {
    stdout.write("| Please enter your starting amount: ");
    user_total_amount = int.tryParse(stdin.readLineSync().toString())!;
    // print("--------------- $user_total_amount");
    
     if( use_money > user_total_amount ) {
      print("---------------------------------------------------------------- \n");    
      print("| You don't have enough money. Please try again !"); 
      print("---------------------------------------------------------------- \n");
      
      startingMoney();
      // startUp();
      winnerOrFail();
      startUp();
      continuingGame(use_money);
      
    } else {
      startUp();
      winnerOrFail();
      continuingGame(use_money);
    }
    
  } else {
    startUp();
    winnerOrFail();
    continuingGame(use_money);      
  } 
  
}

void continuingGame(use_money) {
  
  stdout.write("| Please play the game again (y/n) ? : ");
  String choose = stdin.readLineSync().toString();
  if ( choose == "y" && user_total_amount > 0 ) {
    if ( user_total_amount >= use_money ) {
      lotteryNumber();
    }
    
  }else if ( choose == "y" && user_total_amount == 0 ) {  
    print("| You don't have enough money. Try again later."); 
    print("---------------------------------------------------------------- \n");    
    startingMoney();
  }else {
    
    print("| Game over ! See you again !");
    print("---------------------------------------------------------------- \n");    
    exit(0);
  }
}

void startUp() {
  
  stdout.write("| Please guess a lottery number between 00 and 99 : ");
  user_lottery_number = int.tryParse(stdin.readLineSync().toString())!;
  if ( user_lottery_number == "" ) {
    print("| Please guess the valid number !");
    print("---------------------------------------------------------------- \n");    
    exit(0);
  }
  
  if ( user_lottery_number < 00 || user_lottery_number > 99  ) {
    print("| Please guess the valid number !");
    print("---------------------------------------------------------------- \n");    
    exit(0);
  }
  
  stdout.write("| How much money do you bet for this time ? : "); 
  use_money = int.tryParse(stdin.readLineSync().toString())!; 
  if ( use_money == "" ) {
    print("| Please enter the valid money !"); 
    print("---------------------------------------------------------------- \n");    
    exit(0);
  }
}

void winnerOrFail() {
  int winner_lottery_number = randomLotteryNumber();
  
  if ( user_lottery_number == winner_lottery_number ) {
    print("----------------------------------------------------------------");
    print("| Congratulations ! You are winner !");
    print("| Winner number = ${winner_lottery_number} | Guess number = ${user_lottery_number}");
    
    user_total_amount += (use_money * 2);
    print("| Your total money is : ${user_total_amount}");
    print("----------------------------------------------------------------\n");
  }else {
    
    print("\n----------------------------------------------------------------");
    print("| Trying again and again for future success. Please try again !");
    user_total_amount -= use_money;
    
    print("| Winner number = ${winner_lottery_number} | Guess number = ${user_lottery_number}");
    print("| Your total money is : ${user_total_amount}");
    print("----------------------------------------------------------------\n");
    
  }
}