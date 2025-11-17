void main() {
  print('Hello world');

  //   1. Check if Three Numbers Can Form a Triangle
  // Input three sides and check:
  // less
  // Copy
  // Edit
  // A triangle is valid if:
  // a + b > c && a + c > b && b + c > a

  int a = 20;
  int b = 15;
  int c = 30;

  if ((a + b > c) && (a + c > b) && (b + c > a)) {
    print('This is valid triangle');
  } else {
    print('This is not valid triangle');
  }

  // 2. Check if a Year, Month, Day Combination is a Valid Date
  // Input: year, month, day
  // Output: “Valid Date” or “Invalid Date”
  // Hint: Consider months with 30/31 days and leap year logic for February.

  int day = 12;
  int month = 11;
  int year = 2025;

  if ((day >= 1 && day <= 31) && (month > 1 || month <= 12)) {
    if (year % 4 == 0) {
      print("This is leap Year");
    } else {
      print("Valid date ");
    }
  } else {
    print("Not Valide Date");
  }

  // 3. Day of the Week Calculator
  // Input: Number (1–7)
  // Output: Monday–Sunday
  // Bonus: If outside 1–7, show “Invalid day number”
  int dayInWeek = 2;

  if (dayInWeek == 1) {
    print("Sunday");
  } else if (dayInWeek == 2) {
    print("Monday");
  } else if (dayInWeek == 3) {
    print("TuesDay");
  } else if (dayInWeek == 4) {
    print("Wedness day");
  } else if (dayInWeek == 5) {
    print("ThursDay");
  } else if (dayInWeek == 6) {
    print("Friday");
  } else if (dayInWeek == 7) {
    print("Saturday");
  } else {
    print("Invalid Day");
  }

  // 4. Body Mass Index (BMI) Calculator
  // Input: Weight (kg), Height (meters)
  // BMI = weight / height²
  // Output:
  // <18.5 → Underweight
  // 18.5–24.9 → Normal
  // 25–29.9 → Overweight
  // 30+ → Obese

  double weight = 56;
  double height = 60;

  double bmi = weight / height;

  if (bmi < 18.5) {
    print("Under weight");
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    print("Normal weight");
  } else if (bmi >= 25 && bmi <= 29.9) {
    print("Over weight");
  } else {
    print("Obese");
  }
  // 5. Marks Validator & Grader
  // Input: 5 subject marks
  // Validate that no mark >100 or <0
  // If valid, calculate percentage and print grade using if-else-if

  List<int> marks = [80, 85, 70, 90, 90];
  int total = 0;
  for (int i = 0; i < marks.length; i++) {
    total += marks[i];
  }

  double persentage = total / 5;

  if (persentage >= 90) {
    print("A+");
  } else if (persentage >= 80) {
    print("A");
  } else if (persentage >= 70) {
    print("b+");
  } else if (persentage >= 60) {
    print("c+");
  } else if (persentage >= 50) {
    print("c");
  } else if (persentage >= 35) {
    print("d");
  } else {
    print("Your Fail");
  }

  // 6. Electricity Bill with Slab Rates
  // Input: Units consumed
  // Logic:
  // bash
  // Copy
  // Edit
  // - First 100 units: ₹3/unit
  // - Next 100 units (101–200): ₹5/unit
  // - Above 200: ₹10/unit

  int units = 1588;

  if (units <= 100) {
    print("less then 100 units $units * 3 = ${units * 3}.Rs");
  } else if (units > 100 && units <= 200) {
    print("100 units to 200 units $units * 5 = ${units * 5}.Rs");
  } else if (units > 200) {
    print("more then  200 units $units * 10 = ${units * 10}.Rs");
  }

  // 7. Three-Digit Armstrong Number Checker
  // A number is Armstrong if:
  // ini
  // Copy
  // Edit
  // 153 = 1³ + 5³ + 3³ = 153
  // Input: number
  // Output: Armstrong or Not

  int amsNo = 153;
  List<int> cubeNo = [];
  int amsValue = 0;
  List no = amsNo.toString().split("").toList();
  for (int i = 0; i < no.length; i++) {
    int n = int.parse(no[i]);
    cubeNo.add(n * n * n);
  }

  for (int i = 0; i < cubeNo.length; i++) {
    amsValue += cubeNo[i];
  }

  print(amsValue);

  if (amsNo == amsValue) {
    print("this is armstrong number");
  } else {
    print("This is not a armstrong number");
  }

  // 8. Nested Login System
  // Input: username and password
  // If correct:
  // Ask role: admin/user
  // If admin, show “Welcome Admin”
  // If user, show “Welcome User”
  // Else: “Role not recognized”
  // If wrong login: “Access Denied”

  String userName = "yogesh";
  String userPassword = "yogesh@123";
  String role = "admin";

  if (userName == "yogesh" && userPassword == "yogesh@123") {
    if (role == "admin") {
      print('Welcome Admin');
    } else if (role == "user") {
      print("welcome role");
    } else {
      print("Role not Recognizeed");
    }
  } else {
    print("Access Denied");
  }

  // 9. Taxi Fare Calculator
  // Input: distance (km)
  // Rate chart:
  // diff
  // Copy
  // Edit
  // - First 5 km: ₹50 flat
  // - Next 10 km: ₹10/km
  // - Above 15 km: ₹8/km

  int distance = 5;

  if (distance <= 5) {
    print("Less the 5 km ${distance * 50}.Rs");
  } else if (distance <= 10) {
    print("Less the 10 km ${distance * 10}.Rs");
  } else if (distance <= 15) {
    print("Less the 10 km ${distance * 8}.Rs");
  }

  // 10. Compare Two Dates
  // Input: day, month, year for both dates
  // Output: Which date is latest

  int year1 = 1999;
  int month1 = 8;
  int day1 = 28;

  int year2 = 1999;
  int month2 = 8;
  int day2 = 24;

  if (year2 > year1) {
    print("$day2 : $month2 : $year2 - this is big");
  } else if (year2 == year1) {
    if (month2 > month1) {
      print("$day2 : $month2 : $year2 - this is big");
    } else if (month2 == month1) {
      if (day2 > day1) {
        print("$day2 : $month2 : $year2 - this is big");
      } else {
        print("$day1 : $month1 : $year1 - this is big");
      }
    } else {
      print("$day2 : $month2 : $year2 - this is big");
    }
  } else {
    print("$day1 : $month1 : $year1 - this is big");
  }
}
