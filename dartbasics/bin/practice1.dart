void main() {
  //hello world
  helloWorld();

  // Question and answer  : 1 to 10
  someBasicCodesOne();

  // Question and answer  : 11 to 10
  someBasicCodeTwo();

  //sum of two numbers
  int sumOfInt = sum(10, 20);
  print("sum of two numbers : $sumOfInt");

  //sum of list
  int listOfSum = sumOfList([10, 20, 30, 40, 50, 60, 70, 80, 90, 100]);
  print("sum of int from List : $listOfSum");

  // check odd or even
  bool isCheck = isCheckTheNumberOddOrEven(21);
  print("is check the number odd or even : $isCheck");

  // multiplecation table
  multiplicationTableUptoTen(5);

  // make new array for even numbers
  getNewArrayForEvenNumbers([
    2,
    32,
    12,
    33,
    54,
    312,
    1,
    4,
    45,
    43,
    2115,
    46,
    312,
    13,
    45,
    7,
    65,
  ]);

  // class - Rectangle
  Rectangle rectangle = Rectangle(300, 500);
  rectangle.areaOfRectangle();

  // class - BankAccount
  BankAccount bankAccount = BankAccount(1020108050);
  bankAccount.depositing(1000);
  bankAccount.withdrawing(1500);

  // class - Product
  Product product = Product("IPhone", "120000", "World's best smart phone");
  product.printTheProductDetails();

  // class - Movie
  Movie movie = Movie("F1", "Joseph Kosinski", "Car race", "10/10", "2025");
  movie.printTheMovieDetails();

  // class - Song
  Song song = Song(
    "Meesaya Muruku",
    "HipHop Tamizha AADHI",
    "Motivation Song",
    "2017",
    "3.5min",
  );

  song.printTheSong();
}

// 1. hello world
void helloWorld() {
  print("HELLO WORLD");
}

void someBasicCodesOne() {
  int num = 10;

  // 2. Write a Dart program to print the sum of two numbers.
  print("sum of two numbers : ${10 + 20}");

  // 3. Write a Dart program to print the length of the string "John Wick".
  String nameOfLength = "john Wick";
  print("Name of Length : ${nameOfLength.length}");

  // 4. Write a program to determine if a number is even or odd
  String isCheckOddOrEven = num.isEven
      ? "$num is a EVEN Number"
      : "$num is a ODD Number";

  print(isCheckOddOrEven);

  // 5. Write a program to check if a number is even or odd using an if statement..

  if (num % 2 == 0) {
    print("$num this is Even number");
  } else {
    print("$num this is Odd number");
  }

  // 6. Write a program to print the first 10 even numbers using a for loop

  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // 7. Write a program to print the multiplication table of 8 using a for loop.
  for (int i = 1; i <= 10; i++) {
    print("$i * 8 = ${i * 8}");
  }

  // 8. Write a program to print the sum of all odd numbers from 1 to 20 using a for loop
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 1) {
      print("");
    }
  }

  // 9. Given List<int> a = [1,2,4,6,7,8,10];, write a program that prints out all the elements of the list that are less than 5
  List<int> a = [1, 2, 4, 6, 7, 8, 10];
  for (int i = 0; i < a.length; i++) {
    if (a[i] < 5) {
      print("less the 5 from array : ${a[i]}");
    }
  }

  // 10. Given List<int> a = [1, 4, 9, 16, 25, 36, 49, 64];, write a Dart program that creates a new list containing only the even elements.
  List<int> ar = [1, 4, 9, 16, 25, 36, 49, 64];
  List<int> evenNumList = [];

  for (int i = 0; i < ar.length; i++) {
    if (ar[i] % 2 == 0) {
      evenNumList.add(ar[i]);
    }
  }
  print("Even Number From Array List : $evenNumList");
}

void someBasicCodeTwo() {
  // 11. Given List<int> a = [5, 10, 15, 20, 25];, create a new list with only the first and last elements.
  List<int> a = [5, 10, 15, 20, 25];
  List<int> newListFirstAndLastElement = [a.first, a.last];
  print("First and Last Element : $newListFirstAndLastElement");

  // 12. Write a Dart program that prints "Hello, World!" if a variable named shouldGreet is true.
  bool shouldGreet = true;
  if (shouldGreet) {
    print("Hello World");
  }

  // 13. Write a Dart program that prints numbers from 1 to 10 using a for loop.
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // 14. Write a Dart program that prints "Positive" if a variable number is positive, "Negative" if it is negative, and "Zero" if it is zero using an if statement.
  int isCheckNum = 0;

  if (isCheckNum < 0) {
    print("NEGATIVE");
  } else if (isCheckNum > 0) {
    print("POSITIVE");
  } else if (isCheckNum == 0) {
    print("ZERO");
  }

  // 15. Write a Dart program that prints the sum of the even numbers from 1 to 10 using a for loop.
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // 16. Write a Dart program that prints numbers from 10 to 1 using a for loop.
  for (int i = 10; i >= 1; i--) {
    print(i);
  }

  // 17. Write a Dart program that prints the sum of numbers from 1 to 100 that are divisible by 3 or 5 using a for loop.
  print("from 1 to 100 that are divisible by 3 or 5 using a for loop");
  for (int i = 1; i <= 100; i++) {
    if (i % 3 == 0) {
      print(i);
    }
  }
  // 18. Write a Dart program that asks the user to enter their age and prints "You are an adult" if their age is 18 or above, otherwise prints "You are not an adult" using an if statement.
  int age = 8;
  if (age >= 18) {
    print("You are ADULT");
  } else {
    print("You are Not ADULT");
  }

  // 19. Write a Dart program that prints "Pass" if a variable grade is greater than or equal to 60, otherwise prints "Fail" using an if statement.
  int grade = 59;
  if (grade >= 60) {
    print("You are pass");
  } else {
    print("You are fail");
  }
}

// 21. Write a Dart function that takes two numbers as parameters and returns their sum.
int sum(int a, int b) {
  return a + b;
}

// 22. Write a Dart function that takes a list of numbers as a parameter and returns the sum of all the numbers in the list.
int sumOfList(List<int> list) {
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum = sum + list[i];
  }
  return sum;
}

// 23. Write a Dart function that takes a number as a parameter and returns true if the number is even, and false if it is odd.
bool isCheckTheNumberOddOrEven(int getNumber) {
  bool isCheckTheNumber = false;
  isCheckTheNumber = getNumber.isEven ? true : false;
  return isCheckTheNumber;
}

// 24. Write a Dart function that takes a number as a parameter and prints the multiplication table for that number up to 10.
void multiplicationTableUptoTen(int multpleNum) {
  for (int i = 1; i <= 10; i++) {
    print("$i * $multpleNum = ${i * multpleNum}");
  }
}

// 25. Write a Dart function that takes a list of numbers as a parameter and returns a new list with only the even numbers from the original list.
void getNewArrayForEvenNumbers(List<int> list) {
  List<int> evenNumberList = [];
  for (int i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0) {
      evenNumberList.add(list[i]);
    }
  }

  print("Even Number list $evenNumberList");
}

// 26. Write a Dart class called Rectangle with properties for width and height, and a method that returns the area of the rectangle.
class Rectangle {
  final int length;
  final int width;

  Rectangle(this.length, this.width);

  void areaOfRectangle() {
    print(" Area Of Rectangle :  ${length * width}\n");
  }
}

// 27. Write a Dart class called BankAccount with properties for balance and accountNumber, and methods for depositing and withdrawing money.
class BankAccount {
  double balance = 10000.00;
  final int accountNumber;
  int bankOriginalAccountNo = 1020108050;
  BankAccount(this.accountNumber);

  void depositing(int deposte) {
    if (accountNumber == bankOriginalAccountNo) {
      print("Your Account Number : $bankOriginalAccountNo");
      balance = balance + deposte;
      print(
        "Successfully deposite your money to your account.\n Total Amount = $balance\n",
      );
    } else {
      print("Failed to deposite...?\nPlease check your Account Number.\n");
    }
  }

  void withdrawing(int withdraw) {
    balance = balance - withdraw;
    print(
      "Successfully with draw money to your account.\n Total Amount = $balance\n",
    );
  }
}

// 28. Write a Dart class called Product with properties for name, price, and description, and a method that prints the product's details.
class Product {
  String name;
  String price;
  String description;

  Product(this.name, this.price, this.description);

  void printTheProductDetails() {
    print(
      "Product Details \nProduct Name : $name \nPrice : $price \nDescription : $description\n",
    );
  }
}

// 29. Write a Dart class called Movie with properties for title, director, year, genre, and rating.
class Movie {
  String title;
  String directorName;
  String year;
  String genre;
  String rating;

  Movie(this.title, this.directorName, this.genre, this.rating, this.year);

  void printTheMovieDetails() {
    print(
      "Movie Details\nMovie Name : $title,\nDirector : $directorName,\nGenre : $genre,\nRating : $rating,\nYear : $year\n",
    );
  }
}

// 30. Write a Dart class called Song with properties for title, artist, album, year, and duration.
class Song {
  String title;
  String artist;
  String album;
  String year;
  String duration;

  Song(this.title, this.artist, this.album, this.year, this.duration);

  void printTheSong() {
    print(
      "Song Details\nSong Name : $title,\nArtist : $artist,\nAlbum : $album,\nYear : $year,\nDuration : $duration\n",
    );
  }
}
