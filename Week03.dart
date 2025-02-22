import 'dart:io';
import 'dart:math';

void main() {
  print("Choose the number of the problem: ");
  int p = int.parse(stdin.readLineSync()!);
  switch (p) {
    case 1:
      // Problem 01
      print("Problem 01: Geuss The Number ");
      geussTheNumber();
    case 2:
      //Problem 02
      print("Problem 02: Is Palidrome ");
      isPalidrome();
    case 3:
      print("Problem 03: Get new password ");
      // Problem 03 I
      print("Tell me what is the time in hh mm : ");
      int time = int.parse(stdin.readLineSync()!);
      time ~/= 100;
      print("Your new password is : ${randomPasswordWithoutMethod(time)}");

      // Problem 03 II
      print("Your new Password is : ${generateRandomPassword()}");

    case 4:
      print("Problem 04: Get Common List ");
      print(getCommonList());

    case 5:
// Problem 05
      print("Problem 05: Get Even List ");
      print(getEvenList());
  }
}

void geussTheNumber() {
  int t = 7;
  int randNum = Random().nextInt(100);
  print("Guess the number");
  while (t != 0) {
    print("\nAttempt ${t} :");
    t--;
    int userNum = int.parse(stdin.readLineSync()!);
    if (userNum == randNum) {
      print('You\'re correct!');
      break;
    } else if (userNum > randNum)
      print("Too High!");
    else
      print("Too Low!");
  }
  print("the number is : $randNum");
}

void isPalidrome() {
  print("Enter a string: ");
  String str = stdin.readLineSync()!;
  for (int i = 0, j = str.length - 1; i < (str.length ~/ 2); i++, j--) {
    if (str[i] != str[j]) {
      print("Is not Palindrome");
      return;
    }
  }
}

String randomPasswordWithoutMethod(int length) {
  length %= 8;
  if (length == 0) length = 8;

  const String letters = "abcdefghijklmnopqrstuvwxyz";
  const String digits = "0123456789";
  const String specialCharacters = "-_/*#@";

  String password = '';

  for (int index = 0; index < length; index++) {
    index %= 8;
    int symbolIndex = (index + 3) % specialCharacters.length;
    int digitIndex = (index + 2) % digits.length;

    String letter = letters[index];
    String symbol = specialCharacters[symbolIndex];
    String digit = digits[digitIndex];

    password += letter + symbol + digit;
  }

  return password;
}

String generateRandomPassword() {
  const String chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
  const String numbers = "0123456789";
  const String symbols = "-_/*#@";
  String generatedPass = '';
  while (generatedPass.length < 8)
    generatedPass += chars[Random().nextInt(52)] +
        numbers[Random().nextInt(10)] +
        symbols[Random().nextInt(6)];
  return generatedPass;
}

List<int> getCommonList() {
  stdout.write("Enter the length of your list1: ");
  int length1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the length of your list2: ");
  int length2 = int.parse(stdin.readLineSync()!);

  Set<int> list1 = _inputList(length1).toSet();
  Set<int> list2 = _inputList(length2).toSet();
  List<int> comList = (list1.intersection(list2)).toList();
  return comList;
}

List<int> getEvenList() {
  stdout.write("Enter the length of your list: ");
  int length = int.parse(stdin.readLineSync()!);

  List<int> userList = _inputList(length), evenList = [];

  for (var num in userList) {
    if (num % 2 == 0) {
      evenList.add(num);
    }
  }

  return evenList;
}

List<int> _inputList(int length) {
  List<int> userList = [];
  while (length-- > 0) {
    int userInput = int.parse(stdin.readLineSync()!);
    userList.add(userInput);
  }
  return userList;
}
