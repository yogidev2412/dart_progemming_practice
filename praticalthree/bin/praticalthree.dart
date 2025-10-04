void main() {
  // loopOne();
  loopTwo();
}

void loopOne() {
  // 1. Write a for loop to print the square of each number in a given list.
  List<int> listOfNum = [10, 2, 3, 4, 54, 56, 43];
  List<int> squareList = [];

  for (int i = 0; i < listOfNum.length; i++) {
    int temp = listOfNum[i] * 2;
    squareList.add(temp);
  }
  print("Square Value : $squareList");

  // 2.Write a for loop to print only the numbers greater than 5 from a list.
  for (int i = 0; i < listOfNum.length; i++) {
    if (listOfNum[i] > 5) {
      print(listOfNum[i]);
    }
  }

  // 3. Write a for loop to multiply each number in a list by 3 and print the results.
  for (int i = 0; i < listOfNum.length; i++) {
    int temp = listOfNum[i] * 3;
    print("3 - Multpli Each Number : $temp");
  }

  // 4. Write a for loop to print the index and value of each element in a list.
  for (int i = 0; i < listOfNum.length; i++) {
    print("Index : $i ||  Value : ${listOfNum[i]}");
  }

  // 5.Write a for loop to calculate the sum of squares of all numbers in a list.

  int sum = 0;

  for (int i = 0; i < listOfNum.length; i++) {
    int temp = listOfNum[i] * 2;
    sum = sum + temp;
  }
  print("Sum Of Square value : $sum");

  // 6. Write a for loop with a condition to skip numbers divisible by 3 and print the remaining ones.
  for (int i = 0; i < listOfNum.length; i++) {
    if (listOfNum[i] % 3 == 1) {
      print("Skiped Value : ${listOfNum[i]}");
    }
  }
  // 7. Write a for loop to count and print how many positive numbers exist in a given list.
  List posAndNagNum = [-2, 23, -43, 3, -2, -5, 45, 21, 34, 53, -42, -4, -8, 64];
  List te = [];

  for (int i = 0; i < posAndNagNum.length; i++) {
    if (posAndNagNum[i] > 0) {
      te.add(posAndNagNum[i]);
    }
  }

  print("Positive Numbers From The List : $te");
  print("Length Of The Positive Number : ${te.length}");

  // 8. Write a for loop to print the squares of numbers greater than 3 from a list.

  for (int i = 0; i < listOfNum.length; i++) {
    if (listOfNum[i] > 3) {
      int temp = listOfNum[i] * 2;
      print("Suqre Of number : $temp");
    }
  }
}

void loopTwo() {
  // 1. Write a Dart program that uses a for loop to print all numbers between 10 and 30 that are divisible by 4.
  for (int i = 10; i <= 30; i++) {
    if (i % 4 == 0) {
      print("4 Divisiable Numbers : $i");
    }
  }

  // 2. Use a for loop to iterate through a list of integers [3, 7, 10, 15, 18, 20] and print only the numbers greater than 10.

  List num = [3, 7, 10, 15, 18, 20];
  for (int i = 0; i < num.length; i++) {
    if (num[i] > 10) {
      print("Greater then 10  Numbers : ${num[i]}");
    }
  }

  // 3.Write a for loop that prints all numbers between 1 and 50 that are divisible by both 3 and 5.
  for (int i = 1; i <= 50; i++) {
    if (i % 3 == 0) {
      print(" 3 Divisiable Number : $i");
    } else if (i % 5 == 0) {
      print("5 Divisiable Number : $i");
    }
  }
  // 4. Given a list of names ["Alice", "Bob", "Charlie", "David", "Eve"], write a for loop to print names that have more than 4 characters.
  List<String> names = ["Alice", "Bob", "Charlie", "David", "Eve"];
  for (int i = 0; i < names.length; i++) {
    if (names[i].length > 4) {
      print("More Then 4 Char : ${names[i]}");
    }
  }

  // 5. Write a for loop to count how many numbers in the list [5, 12, 8, 20, 15, 30] are greater than 10 and print the count.

  List<int> no = [5, 12, 8, 20, 15, 30];
  int count = 0;
  for (int i = 0; i < no.length; i++) {
    if (no[i] > 10) {
      count = count + no[i];
    }
  }
  print("Count The Numbers  : $count");

  // 6. Write a for loop that calculates the sum of all even numbers between 1 and 100 and prints the result.
  int sumOfEvenNo = 0;
  for (int i = 1; i <= 100; i++) {
    if (i % 2 == 0) {
      sumOfEvenNo = sumOfEvenNo + i;
    }
  }

  print("Sum Of Even Numbers ! 1 to 100 : $sumOfEvenNo ");

  // 7. Given a list [1, 2, 3, 4, 5], use a for loop to reverse the list and print the reversed list.
  List rever = [11, 12, 13, 14, 15, 16];
  List rev = [];
  for (int i = rever.length - 1; i >= 0; i--) {
    rev.add(rever[i]);
  }

  print("Revers The Value Of List : $rev");

  // 8. Write a Dart program that asks the user for a number and prints the multiplication table for that number up to 10 using a for loop.
  int ask = 5;

  for (int i = 1; i <= 10; i++) {
    print("$i * $ask = ${i * ask}");
  }

  print("\n");

  // for (int i = 1; i <= ask; i++) {
  //   for (int j = 1; j <= 10; j++) {
  //     print("$j * $i = ${i * j}");
  //   }
  //   print("\n");
  // }

  // 9. Write a for loop that counts the number of vowels in a given string and prints the count.
  String text = "Dart Programming Language";
  int vowelCount = 0;

  for (int i = 0; i < text.length; i++) {
    String char = text[i].toLowerCase();
    if (char == 'a' ||
        char == 'e' ||
        char == 'i' ||
        char == 'o' ||
        char == 'u') {
      vowelCount++;
    }
  }

  print("Number of vowels: $vowelCount");
}
