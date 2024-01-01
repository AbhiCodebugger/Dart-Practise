void main() {
  Map<String, int> fruitsMap = {
    'banana': 5,
    'apple': 10,
    'orange': 3,
    'grape': 8,
  };
  List<int> num1 = [21, 31, 44, 69, 4, 7, 9];
  List<int> num2 = [31, 66, 8, 69, 4, 1];

  // reverseNum(12345);
  // reverseString('abcdef');
  // findSum([9, 4, 51, 31, 59]);
  // findAvg([100, 200]);
  // sortAscending([2, 1, 6, 3, 1, 5, 6, 7]);
  // sortDescending([2, 1, 6, 3, 1, 5, 6, 7]);
  // sortMap(fruitsMap);
  // removeDuplicate([1, 2, 3, 4, 4, 2, 3, 1, 5, 9]);
  // evenAndSquare([1, 3, 4, 7, 8, 2, 6]);
  // reverseAndUnique([1, 4, 2, 6, 4, 7, 5]);
  // generateFebonacciSeries(8);

  // List<int> primeNumbers = [];
  // for (int i = 0; i <= 100; i++) {
  //   if (isPrime(i)) {
  //     primeNumbers.add(i);
  //   }
  // }
  // print(primeNumbers);

  // findMax([1, 4, 72, 9, 44]);

  combineAndRemoveDuplicates(num1, num2);
}

// reverse the number
reverseNum(int num) {
  int reverse = 0;
  while (num != 0) {
    final digit = num % 10;
    reverse = reverse * 10 + digit;
    num = num ~/ 10;
  }
  print(reverse);
}

// reverse a string
reverseString(String text) {
  final reversedStr = text.split("").reversed.join();
  print("reverse : $reversedStr");
}

// sum of given number in a list
findSum(List<int> nums) {
  int total = 0;
  // for-in loop
  for (int num in nums) {
    total += num;
  }
  // for-loop
  for (int i = 0; i < nums.length; i++) {
    total += nums[i];
  }

  // reduce function
  total = nums.reduce((value, element) => value + element);
  print(total);
}

// find average
findAvg(List<int> nums) {
  double avg = 0.0;
  for (int num in nums) {
    avg += (num / 2);
  }
  print("Average : $avg");
}

// sort in ascending order
sortAscending(List<int> nums) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j < nums.length - 1; j++) {
      if (nums[j] > nums[j + 1]) {
        int temp = nums[j];
        nums[j] = nums[j + 1];
        nums[j + 1] = temp;
      }
    }
  }
  print("Asc : $nums");
}

// find max form list

findMax(List<int> nums) {
  int maxNum = 0;
  for (int num in nums) {
    if (maxNum < num) {
      maxNum = num;
    }
  }
  print(maxNum);
}

// add 2 list and return remove duplicates
combineAndRemoveDuplicates(List<int> num1, List<int> num2) {
  List<int> num3 = [];
  for (int n in num1) {
    for (int m in num2) {
      if (n == m && !num3.contains(n)) {
        num3.add(n);
        break;
      }
    }
  }
  print(num3);
}

// descending order
sortDescending(List<int> nums) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j < nums.length - 1; j++) {
      if (nums[j] < nums[j + 1]) {
        int temp = nums[j];
        nums[j] = nums[j + 1];
        nums[j + 1] = temp;
      }
    }
  }
  print('Dsc $nums');
}

// Sort map using keys
sortMap(Map<String, int> fruitsMap) {
  final sortedList = fruitsMap.entries.toList()
    ..sort(
      (a, b) => a.value.compareTo(b.value),
    );
  Map<String, int> sortedMap = Map.fromEntries(sortedList);
  print(sortedMap);
}

// remove duplicates
removeDuplicate(List<int> nums) {
  List<int> original = [];
  for (int num in nums) {
    if (!original.contains(num)) {
      original.add(num);
    }
  }
  print("List : $original");
}

// List Manipulation
evenAndSquare(List<int> nums) {
  List<int> newList = [];
  for (int num in nums) {
    if (num % 2 == 0) {
      final square = num * num;
      newList.add(square);
    }
  }
  print("New List : $newList");
}

reverseAndUnique(List<int> nums) {
  List<int> reversedList = [];
  for (int i = nums.length - 1; i >= 0; i--) {
    reversedList.add(nums[i]);
  }
  print(reversedList);
  Set<int> unique = Set.from(reversedList);
  print(unique);
}

generateFebonacciSeries(int n) {
  List<int> series = [];
  if (n < 1) {
    return;
  }
  int a = 1;
  int b = 1;
  series.add(a);
  for (int i = 1; i <= n; i++) {
    series.add(b);
    int c = a + b;
    a = b;
    b = c;
  }
  print(series);
  return series;
}

isPrime(int num) {
  if (num < 2) {
    return false;
  }
  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

//mapmanipulations
findAvgAgeFromMapList(List persons) {
  List<double> ages = [];
  double totalAge = 0.0;
  double avgAge = 0.0;
  ages = persons.map<double>((person) => person["age"]).toList();

// using loop
//   for (int j = 0; j < age.length; j++) {
//     totalAge += age[j];
//   }
//   if (age.isNotEmpty) {
//     avgAge = totalAge / age.length;
//   }

// using dart built in methods
  avgAge = ages.reduce((a, b) => a + b) / ages.length;
  print("Age List : $ages");
  print("Avg : $avgAge");
}
