void main() {
  //     Strings
  // =======
  // 1. Convert a space-separated string of numbers into a list of integers.
  String stringNo = "123454634454563";
  List convertNos = stringNo.split("");
  print(convertNos);

  // 2. Count how many vowels are in a given string.
  String msg = "hi dear how are you, i want to see you chloo ee";
  int countVowels = 0;
  for (int i = 0; i < msg.length; i++) {
    if (msg[i] == "a" ||
        msg[i] == "e" ||
        msg[i] == "i" ||
        msg[i] == "o" ||
        msg[i] == "u" ||
        msg[i] == "A" ||
        msg[i] == "E" ||
        msg[i] == "I" ||
        msg[i] == "O" ||
        msg[i] == "U") {
      countVowels++;
    }
  }

  print("Vowels count : $countVowels");

  // 3. Reverse a given string.
  String revers = "";
  for (int i = stringNo.length - 1; i >= 0; i--) {
    revers += stringNo[i];
  }

  print("Revers String : $revers");

  // 4. Check if a given string is a palindrome.
  String palindromWord = "madam";
  String palindromRevers = "";
  for (int i = palindromWord.length - 1; i >= 0; i--) {
    palindromRevers += palindromWord[i];
  }

  if (palindromRevers == palindromWord) {
    print("This is a palindrom word : $palindromWord");
  } else {
    print("This is not palindrom word : $palindromRevers");
  }

  // 5. Capitalize the first letter of each word in a string.
  List cap = msg.split(" ");
  String capsFirstLetter = "";
  for (int i = 0; i < cap.length; i++) {
    String t = cap[i];
    capsFirstLetter += "${t[0].toUpperCase()}${t.substring(1, cap[i].length)} ";
  }
  print(capsFirstLetter);

  // 6. Remove all digits from a string. Ex:"user123data456test"
  String some = "user123data456test";
  List copySome = some.split("");
  List removeDigitd = [];
  print(copySome);
  for (int i = 0; i < copySome.length; i++) {
    if (copySome[i] == "0" ||
        copySome[i] == "1" ||
        copySome[i] == "2" ||
        copySome[i] == "3" ||
        copySome[i] == "4" ||
        copySome[i] == "5" ||
        copySome[i] == "6" ||
        copySome[i] == "7" ||
        copySome[i] == "8" ||
        copySome[i] == "9") {
    } else {
      removeDigitd.add(copySome[i]);
    }
  }
  print(removeDigitd.join());

  // 7. Count the number of words in a string.
  List countWords = msg.split(" ");
  print("words count : ${countWords.length}");

  // 8. Replace all spaces in a string with hyphens.
  String rp = msg;
  print(rp.replaceAll(" ", "-"));

  // 9. Find the most frequent character in a string.
  String text = "programming";
  Map<String, int> freq = {};
  // Count each character
  for (var ch in text.split('')) {
    freq[ch] = (freq[ch] ?? 0) + 1;
  }
  // Find the max occurring character
  String mostChar = '';
  int maxCount = 0;
  freq.forEach((key, value) {
    if (value > maxCount) {
      maxCount = value;
      mostChar = key;
    }
  });

  print("Most frequent character: $mostChar ($maxCount times)");

  // 10. Remove duplicate characters from a string.

  String res = "";
  for (int i = 0; i < msg.length; i++) {
    if (!res.contains(msg[i])) {
      res += msg[i];
    }
  }
  print("Remove Dupicate value : $res");

  // 11. Count how many times each word appears in a string.
  String text1 = "hello world hello dart world hello";
  // Step 1: Split string into words
  List<String> words1 = text1.split(' ');

  // Step 2: Create a Map for counting
  Map<String, int> freq1 = {};

  // Step 3: Count each word
  for (var w in words1) {
    freq1[w] = (freq1[w] ?? 0) + 1;
  }

  // Step 4: Print result
  freq1.forEach((word, count) {
    print("$word: $count");
  });

  // 12. Find all the numeric values in a string and print them.
  String te = "user123data45test789";
  String current = "";
  for (int i = 0; i < te.length; i++) {
    if (te[i] == "1" ||
        te[i] == "2" ||
        te[i] == "3" ||
        te[i] == "4" ||
        te[i] == "5" ||
        te[i] == "6" ||
        te[i] == "7" ||
        te[i] == "8" ||
        te[i] == "9" ||
        te[i] == "0") {
    } else {
      current += te[i];
    }
  }
  print("Remove the numeric values : $current");

  // 13. Convert a string of comma-separated numbers into a list and sort it.
  String data = "10,3,25,7,1";
  List da = data.split(",");

  List<int> nums = da.map((item) => int.parse(item)).toList();
  nums.sort();
  print(nums);

  // 14. Count how many uppercase and lowercase letters are in a string.
  String ext = "Hello World Dart ABC xyz";
  int uppperCount = 0;
  int lowerCount = 0;

  for (int i = 0; i < ext.length; i++) {
    String char = ext[i];
    if (char == char.toUpperCase() && char != char.toLowerCase()) {
      uppperCount++;
    } else {
      lowerCount++;
    }
  }

  print("upper case count : $uppperCount");
  print("lower case count : $lowerCount");

  // 15.Extract and print only words longer than 4 characters.
  List q = msg.split(" ");

  for (int i = 0; i < q.length; i++) {
    if (q[i].length >= 4) {
      print(q[i]);
    }
  }

  // 16.  Validate a Strong Password
  //       Write a Dart program to check if a password is strong. A strong password must:
  //       Be at least 8 characters long
  //       Contain at least one uppercase letter
  //       Contain at least one lowercase letter
  //       Contain at least one digit
  //       Contain at least one special character (!@#\$%^&*)
  //      ch.codeUnitAt(0) >= 65 && ch.codeUnitAt(0) <= 90

  String password = "Aafd@1234";

  bool hasUpper = false;
  bool hasLower = false;
  bool hasDigit = false;
  bool hasSpecial = false;
  List<String> specials = ['!', '@', '#', r'$', '%', '^', '&', '*'];
  // Check each character
  for (int i = 0; i < password.length; i++) {
    String ch = password[i];
    int code = ch.codeUnitAt(0);
    if (code >= 65 && code <= 90) {
      hasUpper = true; // Uppercase
    } else if (code >= 97 && code <= 122) {
      hasLower = true; // Lowercase
    } else if (code >= 48 && code <= 57) {
      hasDigit = true; // Digit
    } else if (specials.contains(ch)) {
      hasSpecial = true; // Special character
    }
  }
  // Final validation
  if (password.length >= 8 && hasUpper && hasLower && hasDigit && hasSpecial) {
    print("Strong Password");
  } else {
    print("Weak Password");
  }
}