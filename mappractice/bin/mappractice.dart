void main() {
  //   1. Create a Simple Map
  // Task: Create a map named student with keys: name, age, and grade, and assign appropriate values. Print all key-value pairs.
  Map studentDetails = {"name": "yogesh", "age": 25, "grade": "A+"};
  studentDetails.forEach((key, value) => print("$key : $value"));

  // 2. Add and Remove Key-Value Pairs
  // Task: Add a new key email to the existing map. Then remove the key grade. Print the map before and after.
  print("before : $studentDetails");
  studentDetails["email"] = "yogi1224@gmail.com";
  print("after : $studentDetails");

  studentDetails.remove("grade");
  print("after delete grade : $studentDetails");

  // 3. Iterate Over a Map
  // Task: Use a forEach loop to print all keys and their values from a map named countries with 3 entries.

  Map<String, String> countries = {
    "India": "New Delhi",
    "USA": "Washington D.C.",
    "Japan": "Tokyo",
  };
  countries.forEach((key, value) => print("$key : $value"));

  // 4. Count Frequency of Elements in a List
  // Task: Given a list of integers, use a map to count how many times each number appears.
  List<int> numbers = [1, 2, 3, 2, 4, 1, 2, 5, 3, 1];
  Map<int, int> countMap = {};

  for (int num in numbers) {
    if (countMap.containsKey(num)) {
      countMap[num] = countMap[num]! + 1;
    } else {
      countMap[num] = 1;
    }
  }

  print(countMap);

  // 5. Find the Highest Value in a Map
  // Task: Given a map of products with names as keys and prices as values, find the product with the highest price.
  Map<String, double> products = {
    "Laptop": 55000,
    "Phone": 30000,
    "Headphones": 2500,
    "Monitor": 12000,
  };
  String highestProduct = "";
  double highestPrice = 0;

  products.forEach((product, price) {
    if (price > highestPrice) {
      highestPrice = price;
      highestProduct = product;
    }
  });

  print("$highestProduct : $highestPrice");

  // 6. Merge Two Maps
  // Task: Merge two maps map1 and map2 into a single map. If there are duplicate keys, values from map2 should override map1.
  Map<String, dynamic> map1 = {"name": "Yogesh", "age": 21, "city": "Chennai"};
  Map<String, dynamic> map2 = {"age": 22, "country": "India"};
  Map<String, dynamic> mergeMaps = {...map1, ...map2};
  print(mergeMaps);

  // 7. Convert Map Keys and Values to Separate Lists
  // Task: Given a map, create two separate lists: one containing keys and the other containing values.
  Map<String, int> marks = {"Tamil": 90, "English": 85, "Maths": 95};
  List<String> keysList = marks.keys.toList();
  List<int> valuesList = marks.values.toList();
  print("Keys: $keysList");
  print("Values: $valuesList");

  // 8. Filter Map Entries
  // Task: Given a map of student names and marks, create a new map containing only students who scored more than 75.
  Map<String, int> students = {
    "Yogesh": 85,
    "yuva": 72,
    "roobi": 91,
    "abi": 60,
    "vicky": 78,
  };
  Map<String, int> filteredStudents = {};
  students.forEach((name, mark) {
    if (mark > 75) {
      filteredStudents[name] = mark;
    }
  });
  print(filteredStudents);

  // 9. Reverse Keys and Values
  // Task: Create a new map from an existing one where keys become values and values become keys.
  Map<String, int> original = {"Tamil": 90, "English": 85, "Maths": 95};
  Map<int, String> reversed = {};
  original.forEach((key, value) {
    reversed[value] = key;
  });
  print("Original: $original");
  print("Reversed: $reversed");

  // 10. Check if a Key Exists in Map
  // Task: Write a function that checks if a key exists in a map. Return true or false.
  Map<String, int> mark = {"Tamil": 90, "English": 85, "Maths": 95};

  print(checkKey(mark, "English")); //
  print(checkKey(mark, "Science"));
}

bool checkKey(Map map, dynamic key) {
  return map.containsKey(key);
}
