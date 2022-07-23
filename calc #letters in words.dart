import 'dart:io';

int calc(List l, List<int> value) {
  print("Enter the word: ");
  int c = 0;
  String word = stdin.readLineSync()!;
  word = word.toLowerCase();
  // to loop word letter by letter
  for (int i = 0; i < word.length; i++) {
    // to loop array of letters
    for (int j = 0; j < value.length; j++) {
      for (int k = 0; k < l[j].length; k++) {
        if (word[i] == l[j][k]) {
          c += value[j];
        }
      }
    }
  }
  return c;
}

void main(List<String> arguments) {
  String s = '';
  List<List> array = [];
  List<int> valueArray = [];
  loop:
  while (true) {
    print("Enter the number: ");
    int num = int.parse(stdin.readLineSync()!);
    print("Enter your input and exit to stop: ");
    s = stdin.readLineSync()!;
    s = s.toLowerCase();
    if (num % 2 == 0 && s != 'exit') {
      List evenArray = s.split(' ,');
      print("the array is $evenArray  $num");
      array.add(evenArray);
      valueArray.add(num);
    } else if (num % 2 != 0 && s != 'exit') {
      List oddArray = s.split(",");
      print("the array is $oddArray  $num");
      array.add(oddArray);
      valueArray.add(num);
    } else if (s == 'exit') {
      print(calc(array, valueArray));
      break loop;
    }
  }
}
