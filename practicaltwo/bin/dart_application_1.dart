void main() {
  // 1
  calculates(width: 100.50, height: 60.40);

  // 2
  greet(name: "yuva", greeting: "yogesh");

  // 3
  int sumOfNum = sumNumbers(num1: 10, num2: 10);
  print("Sum Of Two numbers : $sumOfNum");

  // 4
  String orderDetails = orderItem(itemName: "Iphone 17", quantity: 5);
  print("Order Details :-\n $orderDetails");

  // 5
  bookTicket("yogesh", seatNumber: 2, mealPreference: "Pizza");

  // 6
}

// 1 . Define a function in Dart that calculates the area of a rectangle. Use named parameters length and width, where both parameters are required.
void calculates({required double width, required double height}) {
  print("Area Of Rectangle : ${width * height}");
}

// 2. Create a function in Dart named greet that takes a mandatory name parameter and an optional positional parameter greeting.
//    The default value for greeting should be "Hello". Call the function with and without the optional parameter.lo

void greet({required String name, String greeting = "hello"}) {
  print("Required And Optional Parameters Value");
  print("Parameters of Name : $name");
  print("Parameters of Greeting : $greeting");
}

// 3. Write a Dart function called sumNumbers that takes two optional positional parameters num1 and num2, both defaulting to 0. The function should return their sum.
int sumNumbers({int num1 = 30, int num2 = 50}) {
  return num1 + num2;
}

// 4.Write a Dart function orderItem that:
//      Takes a required named parameter itemName.
//      Has an optional named parameter quantity, which defaults to 1.
//      Returns a string summarizing the order.

String orderItem({required String itemName, int quantity = 1}) {
  return "Item Title : $itemName\nItem Quantity : $quantity";
}

// 5. Write a Dart function bookTicket that:
//       Takes userName as a required positional parameter.
//       Has a named parameter seatNumber, which is required.
//       Has a named parameter mealPreference, which is optional with a default value of "Vegetarian".

void bookTicket(
  String userName, {
  required int seatNumber,
  String mealPreference = "Vegetarian",
}) {
  print("Ticket Booking Details :-");
  print("User Name : $userName");
  print("Booking Seats : $seatNumber");
  print("Food : $mealPreference");
}


// 6. 