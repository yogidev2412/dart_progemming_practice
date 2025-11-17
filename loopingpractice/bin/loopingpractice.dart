void main() {
  //   Dart Looping Tasks
  // ==================
  // 1. Print All Prime Numbers from 1 to 100
  // Use a loop and condition to check if a number is prime.
  for (int num = 2; num <= 100; num++) {
    bool isPrime = true;

    for (int i = 2; i * i <= num; i++) {
      if (num % i == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print(num);
    }
  }

  // 2. Fibonacci Series (first N terms)
  // Input: n
  // Output: 0 1 1 2 3 5 8 ...

  int a = 0;
  int b = 1;
  for (int i = 2; i <= 10; i++) {
    int next = a + b;
    print(next);
    a = b;
    b = next;
  }

  // 3. Reverse a Number
  // Input: 1234 → Output: 4321

  for (int i = 10; i > 0; i--) {
    print(i);
  }

  // 4. Check if a Number is a Palindrome
  // Input: 121 → Output:121=> Yes
  // Input: 123 → Output:321=> No
  int? num = 12321;

  List n = num.toString().split("");
  List rever = [];
  for (int i = n.length - 1; i >= 0; i--) {
    rever.add(n[i]);
  }
  print(rever);

  if (rever.join() == num.toString()) {
    print("This is palindrom");
  } else {
    print("This is not a palindrom");
  }

  // 5. Check Armstrong Number (3-digit)
  // Input: 371 → 3³ + 7³ + 1³ = 371

  int amsN = 371;
  List ams = amsN.toString().split("");
  List<int> plusAms = [];
  for (int i = 0; i < ams.length; i++) {
    plusAms.add(int.parse(ams[i]) * int.parse(ams[i]) * int.parse(ams[i]));
  }

  int amsNo = 0;

  for (int i = 0; i < plusAms.length; i++) {
    amsNo += plusAms[i];
  }

  if (amsNo == amsN) {
    print("This is a Armstrong number");
  } else {
    print("This is Not a Armstrong number");
  }

  // 6. Pattern Printing (Stars & Numbers)
  // Examples:
  // Triangle of stars
  // *
  // **
  // ***
  // Number triangle
  // 1
  // 12
  // 123

  for (int i = 0; i < 5; i++) {
    String starts = "";
    for (int j = 0; j < i + 1; j++) {
      starts = "$starts*";
    }
    print(starts);
  }

  for (int i = 1; i <= 5; i++) {
    String nn = "";
    for (int j = 1; j < i + 1; j++) {
      String temp = j.toString();
      nn += temp;
    }
    print(nn);
  }

  // 7. Sum of Digits
  // Input: 1234 → Output: 1 + 2 + 3 + 4 = 10
  int sum = 0;
  for (int i = 0; i < 10; i++) {
    sum += i;
  }

  print(sum);

  // 8. Find GCD (HCF) and LCM of Two Numbers
  // Input: 12, 18
  // GCD = 6, LCM = 36

  int a1 = 122, b1 = 18;

  int gcdValue = gcd(a1, b1);
  int lcmValue = (a * b) ~/ gcdValue;

  print("GCD = $gcdValue");
  print("LCM = $lcmValue");

  // 9. Factorial of a Number
  // Input: 5 → Output: 5! = 120
  int fact = 1;
  for (int i = 1; i <= 5; i++) {
    fact *= i;
  }
  print(fact);

  // 10. Check if a Number is Strong Number
  // A number is strong if:
  // 145 = 1! + 4! + 5! = 145
  int strong = 145;
  List nos = strong.toString().split("");
  int sum1 = 0;
  for (int i = 0; i < nos.length; i++) {
    print(nos[i]);
    int facts = 1;
    for (int j = 1; j <= int.parse(nos[i]); j++) {
      facts = facts * j;
    }
    sum1 += facts;
  }

  print(sum1);

  if (sum1 == strong) {
    print("This is strong number $sum1");
  } else {
    print('This is not strong numnber $sum1');
  }

  // 11. Perfect Number
  // A number is perfect if sum of its factors (excluding itself) equals the number
  // 6 → 1 + 2 + 3 = 6
  int perfectNo = 6;
  int checkPerfectNo = 0;
  for (int i = 1; i <= perfectNo / 2; i++) {
    if (perfectNo % i == 0) {
      checkPerfectNo += i;
    }
  }

  if (checkPerfectNo == perfectNo) {
    print("this is the perfect no");
  } else {
    print("This is not a perfect no");
  }

  // 12. Count Even and Odd Digits in a Number
  // Input: 12345 → Output: Even: 2, Odd: 3

  int noa = 12345677;
  int countOdd = 0;
  int countEven = 0;

  List convertList = noa.toString().split("");

  for (int i = 0; i < convertList.length; i++) {
    if (int.parse(convertList[i]) % 2 == 0) {
      countEven++;
    } else {
      countOdd++;
    }
  }

  print("Total Odd Number : $countOdd");
  print("Total even Number : $countEven");

  // 13. Find the Largest Digit in a Number
  // Input: 5489 → Output: 9

  int lNo = 12334456789;
  List lo = lNo.toString().split("");
  int largerNo = 0;
  for (int i = 0; i < lo.length; i++) {
    if (largerNo < int.parse(lo[i])) {
      largerNo = int.parse(lo[i]);
    }
  }

  print("this is a large number $largerNo");

  // 14. Multiplication Table
  // Input: 5 → Output:
  // 5 x 1 = 5
  // 5 x 2 = 10 ... up to 5 x 10 = 50

  for (int i = 1; i <= 10; i++) {
    print("$i * 5 = ${i * 5}");
  }
}

int gcd(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}
