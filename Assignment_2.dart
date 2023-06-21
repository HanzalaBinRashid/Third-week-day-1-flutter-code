void main() {
  List<String> names = [
    'Ahmed',
    'Saif',
    'Tamim',
    'Okasha',
    'Hafsa',
  ];

  names.forEach((name) {
    print(name);
  });
}

void main() {
  List<String> days = [];

  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');

  days.forEach((day) {
    print(day);
  });
}

void main() {
  List<String> daysOfWeek = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];

  // Removing one day at a time from the end of the list
  while (daysOfWeek.isNotEmpty) {
    print('Current list: $daysOfWeek');
    String removedDay = daysOfWeek.removeLast();
    print('Removed day: $removedDay');
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<bool> isEvenList = [];

  for (int number in numbers) {
    bool isEven = number % 2 == 0;
    isEvenList.add(isEven);
  }

  print('Original list of numbers: $numbers');
  print('List of even/odd results: $isEvenList');
}

void main() {
  List<int> numbers = [15, 7, 22, 4, 9, 13, 11, 5];

  int smallestNumber = getSmallestNumber(numbers);
  int greatestNumber = getGreatestNumber(numbers);

  print('List of numbers: $numbers');
  print('Smallest number: $smallestNumber');
  print('Greatest number: $greatestNumber');
}

int getSmallestNumber(List<int> numbers) {
  int smallest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }

  return smallest;
}

int getGreatestNumber(List<int> numbers) {
  int greatest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > greatest) {
      greatest = numbers[i];
    }
  }

  return greatest;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<bool> isEvenList = [];

  for (int number in numbers) {
    bool isEven = number % 2 == 0;
    isEvenList.add(isEven);
  }

  print('Original list of numbers: $numbers');
  print('List of even/odd results (before removing): $isEvenList');

  isEvenList.removeWhere((value) => value == false);

  print('List of even/odd results (after removing): $isEvenList');
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print('Original list of numbers: $numbers');

  // Remove even numbers and add 1 to each odd number
  numbers.removeWhere((number) => number % 2 == 0);
  numbers = numbers.map((number) => number + 1).toList();

  print('Updated list of numbers: $numbers');
}

void main() {
  List<String> daysOfWeek = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];

  List<String> daysStartingWithS =
      daysOfWeek.where((day) => day.startsWith('S')).toList();

  print('Days that start with the letter "S": $daysStartingWithS');
}
