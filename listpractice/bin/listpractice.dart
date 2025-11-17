void main() {
  print('Hello world:');
  // 1.Create a list of integers and print all elements.
  List<int> listOfInt = [10, 20, 30, 40, 50];
  print(listOfInt);

  // 2.Add an element to a list.
  listOfInt.add(60);
  print(listOfInt);

  // 3.Remove an element from a list.
  listOfInt.remove(30);
  print(listOfInt);

  // 4.Find the length of a list.
  print('Length of the List : ${listOfInt.length}');

  // 5.Check if a list contains a certain element.
  if (listOfInt.contains(20)) {
    print("It is here 20");
  } else {
    print("Not The Number");
  }
  // 6.Sort a list of numbers in ascending order.
  List<int> order = [45, 2, 43, 232, 12, 5, 52, 12, 6, 4, 311, 67, 8];
  order.sort();
  print("Ascenting Order : $order");

  // 7.Reverse a list.
  List reversList = [];
  for (int i = order.length - 1; i >= 0; i--) {
    reversList.add(order[i]);
  }

  print(reversList);

  // 8.Find the maximum and minimum values in a list.
  int maxNo = 0;
  int minNo = order[0];

  for (int i = 0; i < order.length; i++) {
    if (maxNo < order[i]) {
      maxNo = order[i];
    }
  }
  for (int i = 0; i < order.length; i++) {
    if (minNo > order[i]) {
      minNo = order[i];
    }
  }

  print("Maxmum Number of list : $maxNo");
  print("Minmum Number of list : $minNo");

  // 9.Sum all elements in a list.
  int sum = 0;
  for (var item in order) {
    sum += item;
  }
  print("Sum of all elements In List : $sum");

  // 10.Create a list of strings and print the first and last elements.
  List<String> listOfString = [
    "android",
    "ios",
    "windows",
    "mac",
    "linux",
    "Chrombook",
  ];
  print(
    "First element ${listOfString.first} & Last Element ${listOfString.last}",
  );

  // 11.Remove duplicates from a list.
  List value = [23, 3, 23, 34, 2, 2, 2, 34, 5, 67, 3];
  List removeDublicateValue = [];

  for (var item in value) {
    if (!removeDublicateValue.contains(item)) {
      removeDublicateValue.add(item);
    }
  }

  print("Origanal  value to list : $value");
  print("Remove Dublicate value to list : $removeDublicateValue");

  // 12.Merge two lists into one.
  List mergeTwoList = [...value, ...removeDublicateValue];
  print("Merge Two Lists $mergeTwoList");

  // 13.Find common elements between two lists.
  List listOne = [10, 20, 30, 40, 50, 60, 70];
  List listTwo = [10, 15, 30, 45, 65, 60, 70];
  List commenList = [];

  for (int i = 0; i < listOne.length; i++) {
    if (listTwo[i] == listOne[i]) {
      commenList.add(listTwo[i]);
    }
  }

  print(commenList);

  // 14.Find the difference between two lists.
  List diffList = [];
  List diff1 = [];
  List diff2 = [];
  for (int i = 0; i < listOne.length; i++) {
    if (listTwo[i] != listOne[i]) {
      diff2.add(listTwo[i]);
      diff1.add(listOne[i]);
    }
  }

  diffList = [...diff2, ...diff1];

  print(diffList);

  // 15.Insert an element at a specific index.
  List ind = [10, 20, 30, 40, 50];
  ind.insert(0, 100);
  print(ind);

  // 16.Replace an element at a given index with another value.
  ind.replaceRange(0, 5, [200, 300, 400, 500, 600, 700]);
  print(ind);

  // 17.Filter even numbers from a list.
  List num = [12, 4, 2, 3, 5, 642, 21, 345, 21, 1445, 734];
  Iterable even = num.where((n) => n % 2 == 0);
  print(even);

  // 18.Create a list of squares from another list of numbers.
  List squre = ind.map((n) => n * 2).toList();
  print(squre);

  // 19.Check if a list is a palindrome.
  List pali = [1, 2, 3, 2, 1, 4];
  List revers = [];

  for (int i = pali.length - 1; i >= 0; i--) {
    revers.add(pali[i]);
  }

  print(revers.join());
  if (pali.join() == revers.join()) {
    print('This is palinrom List');
  } else {
    print('This is not palindrom List');
  }
}
