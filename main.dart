void main() {
  // reverseNum(12345);
  // reverseString('abcdef');
  // findSum([9, 4, 51, 31, 59]);
  // findAvg([100, 200]);
  sortAscending([2, 1, 6, 3, 1, 5, 6, 7]);
  sortDescending([2, 1, 6, 3, 1, 5, 6, 7]);
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
