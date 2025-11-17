void main() {
  print('Hello world:');

  // 1.
  //  print type - 1
  print(sumOfTwonumbers(10, 45));
  //  print type - 2
  int sum = sumOfTwonumbers(20, 10);
  print(sum);

  // 2.
  checkEvenOrAdd(48);

  // 3.
  findMax(34, 569, 78);

  // 4.
  String name = greetUser("yogesh");
  print(name);

  // 5.
  int factorialNumber = factorial(5);
  print(factorialNumber);

  // 6.
  int vowCount = countVowels(
    "this is a very useful for me because it is improve my logical thinking and improve my skils  aeioy",
  );
  print(vowCount);

  // 7.
  bool isPalin = isPalindrome("madamm");
  print(
    isPalin
        ? "Yes! this is palinrom  : $isPalin"
        : "Opps! not a palindrome : $isPalin",
  );

  // 8.
  findPrimes(10, 20);

  // 9.
  List rev = revereList([1, 2, 3, 4, 5]);
  print(rev);

  // 10.
  double avgrageNumber = calculateAverage([10, 20, 30, 40, 50]);
  print('Avarage number : $avgrageNumber');

  // 11.
  toFahrenheit(40.56);

  // 12.
  int second = secondLargest([10, 20, 30, 40, 45, 50]);
  print(second);

  // 13.
  int count = countWords(
    "iam a developer for mobile website desktop what ever",
  );
  print(count);

  // 14.
  isArmstrong(153);
}

//  ===================  function practices ==================================

// 1.Sum of Two Numbers
// Write a function addNumbers(int a, int b) that returns the sum of two numbers.
// Bonus: Call it from main() and print the result.

int sumOfTwonumbers(int a, int b) {
  return a + b;
}

// 2.Check Even or Odd
// Create a function checkEvenOdd(int num) that returns "Even" or "Odd" depending on the input number.
void checkEvenOrAdd(int num) {
  if (num % 2 == 0) {
    print("This is even number");
  } else {
    print("This is odd number");
  }
}

// 3.Find Maximum of Three Numbers
// Write a function findMax(int a, int b, int c) that returns the largest number among the three.
void findMax(int a, int b, int c) {
  if (a > b && a > c) {
    print("A is Largest number $a");
  } else if (b > a && b > c) {
    print("B is Largest number $b");
  } else {
    print("C is Largest number $c");
  }
}

// 4.Simple Greeting Function
// Function greetUser(String name) should return "Hello <name>, welcome to Dart!".
String greetUser(String name) {
  return "Hello $name, welcome to the dart";
}

// 5.Factorial Function
// Write a function factorial(int n) using recursion to return the factorial of a number.
// Example: factorial(5) → 120

int factorial(int n) {
  int fact = 1;
  for (int i = 1; i <= n; i++) {
    fact = fact * i;
  }

  return fact;
}

// 6.Count Vowels in a String
// Create a function countVowels(String str) that returns the number of vowels in the string.
int countVowels(String str) {
  int countVow = 0;

  for (int i = 0; i < str.length; i++) {
    if (str[i] == "a" ||
        str[i] == "e" ||
        str[i] == "i" ||
        str[i] == "o" ||
        str[i] == "u" ||
        str[i] == "A" ||
        str[i] == "E" ||
        str[i] == "I" ||
        str[i] == "O" ||
        str[i] == "U") {
      countVow++;
    }
  }

  return countVow;
}

// 7.Palindrome Check
// Function isPalindrome(String word) should return true if the word reads the same backward.
// Example: madam → true, hello → false

bool isPalindrome(String word) {
  String reverseWord = "";
  bool isPalinromOrNot = false;

  for (int i = word.length - 1; i >= 0; i--) {
    reverseWord = reverseWord + word[i];
  }

  if (word == reverseWord) {
    isPalinromOrNot = true;
    return isPalinromOrNot;
  } else {
    return isPalinromOrNot;
  }
}

// 8.Find Prime Numbers in a Range
// Write a function findPrimes(int start, int end) that prints all prime numbers between two given numbers.

void findPrimes(int start, int end) {
  for (int num = start; num <= end; num++) {
    bool isPrime = true;

    for (int i = 2; i * i <= num; i++) {
      if (num % i == 0) {
        isPrime = false;
      }
    }

    if (isPrime) {
      print(num);
    }
  }
}

// 9.Reverse a List Using Function
// Function reverseList(List<int> numbers) should return a new list with elements in reverse order (without using reversed).

List revereList(List<int> numbers) {
  List<int> reverse = [];

  for (int i = numbers.length - 1; i >= 0; i--) {
    reverse.add(numbers[i]);
  }

  return reverse;
}

// 10.Calculate Average of List
// Write a function calculateAverage(List<int> numbers) that returns the average value of all numbers in the list.
// Example: [10, 20, 30] → 20.0

double calculateAverage(List<int> numbers) {
  int sum = 0;

  for (int num in numbers) {
    sum = sum + num;
  }

  return sum / numbers.length;
}

// 11.Convert Celsius to Fahrenheit
// Create a function toFahrenheit(double celsius) that converts Celsius temperature to Fahrenheit.
// Formula: F = (C × 9/5) + 32

void toFahrenheit(double celsius) {
  double f = (celsius * 9 / 5) + 32;
  print(" Celsius temperature to Fahrenheit : ${f.toStringAsFixed(2)} F");
}

// 12.Find Second Largest Number
// Write a function secondLargest(List<int> numbers) that returns the second largest number from a list (without sorting if possible).

int secondLargest(List<int> numbers) {
  int largest = numbers[0];
  int second = 0;

  for (int num in numbers) {
    if (num > largest) {
      second = largest;
      largest = num;
    } else if (num > second && num < largest) {
      second = num;
    }
  }
  return second;
}

// 13.Count Words in a Sentence
// Function countWords(String sentence) should return how many words are in the given sentence.
// Example: "I love Dart programming" → 4

int countWords(String sentence) {
  List w = sentence.split(" ").toList();
  return w.length;
}

// 14.Check Armstrong Number
// Create a function isArmstrong(int num) that checks if a number is an Armstrong number.
// (Example: 153 → 1³ + 5³ + 3³ = 153 → Armstrong!)

void isArmstrong(int num) {
  int original = num;
  int sum = 0;

  // int digits = num.toString().length;

  while (num > 0) {
    int digit = num % 10; // last digit
    sum += digit * digit * digit; // 3-digit number என்பதால் cube
    num ~/= 10; // remove last digit
  }

  if (sum == original) {
    print("This is Armstorng number");
  } else {
    print("This is not a armstorng number");
  }
}
