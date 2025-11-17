void main() {
  //   1. Arithmetic Operators – Simple Calculator
  // Question: Write a dart program to perform addition, subtraction, multiplication, and division on two numbers using arithmetic operators.
  int a = 20;
  int b = 10;
  print("Addition : ${a + b}");
  print("subtraction : ${a - b}");
  print("multiplication : ${a * b}");
  print("division : ${a / b}");

  // 2. Relational Operators – Compare Two Numbers
  // Question: Write a dart program to compare two integers using relational operators and print whether they are equal, greater, or smaller.
  if (a == b) {
    print("Equal number");
  } else if (a > b) {
    print("A is big");
  } else if (a < b) {
    print("B is big");
  }

  // 3. Logical Operators – Check Eligibility
  // Question: Write a program to check if a person is eligible to vote and has a valid ID using logical operators.
  int age = 18;
  if (age >= 18) {
    print("Your eligible for vote");
  } else {
    print("your are not eligiable for vote");
  }
  // 4. Assignment Operators – Incremental Salary
  // Question: Write a dart program to calculate the new salary after incrementing it by a fixed percentage using assignment operators (+=).
  double salary = 30000;
  double incrementPercent = 10;
  double incrementAmount = salary * (incrementPercent / 100);
  salary += incrementAmount;
  print("New Salary: ₹$salary");

  // 5. Ternary Operator – Maximum of Three Numbers
  // Question: Write a dart program to find the maximum of three numbers using nested ternary operators.
  int a1 = 10;
  int b1 = 25;
  int c1 = 18;
  int max = (a1 > b1) ? (a1 > c1 ? a1 : c1) : (b1 > c1 ? b1 : c1);
  print("Maximum number is: $max");

  // 6. Compound Assignment – Bank Balance Update
  // Question: Create a dart program where deposits and withdrawals are updated using compound assignment operators.
  double balance = 1000; // initial balance
  print("Initial Balance: ₹$balance");
  // Deposit using +=
  double depositAmount = 500;
  balance += depositAmount;
  print("After Deposit (₹$depositAmount): ₹$balance");
  // Withdrawal using -=
  double withdrawAmount = 300;
  balance -= withdrawAmount;
  print("After Withdrawal (₹$withdrawAmount): ₹$balance");

  // 7. Increment/Decrement – Counter Simulation
  // Question: Write a program to simulate a counter that uses both pre-increment and post-increment operators to demonstrate their behavior.
  int counter = 5;
  print("Initial Counter: $counter");
  // Pre-increment
  int pre = ++counter;
  print("After Pre-Increment (++counter):");
  print("counter = $counter");
  print("Returned Value = $pre");
  print("");
  // Post-increment
  int post = counter++;
  print("After Post-Increment (counter++):");
  print("counter = $counter");
  print("Returned Value = $post");

  // 8. Operator Precedence – Expression Evaluation
  // Question: Write a dart program to evaluate a complex expression and show how operator precedence affects the result.
  int aa = 10;
  int bb = 5;
  int cc = 2;
  // Complex expression
  int result1 = aa + bb * cc; // multiplication happens first
  int result2 = (aa + bb) * cc; // parentheses change precedence
  int result3 = aa + bb - cc * 3; // multiplication happens before + and -
  int result4 = aa ~/ bb + cc * 4; // integer division and multiplication
  print("a + b * c = $result1");
  print("(a + b) * c = $result2");
  print("a + b - c * 3 = $result3");
  print("a ~/ b + c * 4 = $result4");
}
