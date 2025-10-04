void main() {
  Looping lop = Looping();
  lop.loop();
}

class Looping {
  void loop() {
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
    List posAndNagNum = [
      -2,
      23,
      -43,
      3,
      -2,
      -5,
      45,
      21,
      34,
      53,
      -42,
      -4,
      -8,
      64,
    ];
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
}
