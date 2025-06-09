void main() {

  int myInt = 42;
  double myDouble = 3.14;
  String myString = "Hello, Dart!";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];

  print('int: $myInt');
  print('double: $myDouble');
  print('String: $myString');
  print('bool: $myBool');
  print('List: $myList');

  int stringToInt(String s) => int.parse(s);
  double stringToDouble(String s) => double.parse(s);
  String intToString(int i) => i.toString();
  double intToDouble(int i) => i.toDouble();

  void convertAndDisplay(String numStr) {
    try {
      int asInt = stringToInt(numStr);
      double asDouble = stringToDouble(numStr);
      print('Original String: $numStr');
      print('Converted to int: $asInt');
      print('Converted to double: $asDouble');
    } catch (e) {
      print('Error: Invalid number string "$numStr"');
    }
  }

  convertAndDisplay("123");
  convertAndDisplay("45.67");
  convertAndDisplay("abc"); 

  void checkNumber(int number) {
    if (number > 0) {
      print('$number is positive');
    } else if (number < 0) {
      print('$number is negative');
    } else {
      print('$number is zero');
    }
  }

  checkNumber(10);
  checkNumber(-5);
  checkNumber(0);

  void checkVotingEligibility(int age) {
    if (age >= 18) {
      print('Age $age: Eligible to vote');
    } else {
      print('Age $age: Not eligible to vote');
    }
  }

  checkVotingEligibility(20);
  checkVotingEligibility(17);

  void printDayOfWeek(int dayNumber) {
    switch (dayNumber) {
      case 1:
        print('Monday');
        break;
      case 2:
        print('Tuesday');
        break;
      case 3:
        print('Wednesday');
        break;
      case 4:
        print('Thursday');
        break;
      case 5:
        print('Friday');
        break;
      case 6:
        print('Saturday');
        break;
      case 7:
        print('Sunday');
        break;
      default:
        print('Invalid day number');
    }
  }

  printDayOfWeek(3);
  printDayOfWeek(7);
  printDayOfWeek(9);

  print('For loop from 1 to 10:');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print('While loop from 10 to 1:');
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  print('Do-while loop from 1 to 5:');
  int k = 1;
  do {
    print(k);
    k++;
  } while (k <= 5);

  List<int> numbers = [3, 12, 105, 7, 50, 200];

  for (var num in numbers) {
    print('\nNumber: $num');

    if (num % 2 == 0) {
      print('Even');
    } else {
      print('Odd');
    }

    switch (num) {
      case int n when (n >= 1 && n <= 10):
        print('Category: small');
        break;
      case int n when (n >= 11 && n <= 100):
        print('Category: medium');
        break;
      case int n when (n > 100):
        print('Category: large');
        break;
      default:
        print('Category: unknown');
    }
  }
}
