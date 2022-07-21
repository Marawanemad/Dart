import 'dart:io';

void main(List<String> arguments) {
  int i = 0;
  while (i != 5) {
    print("Enter the number of the operation you want \n 1.add \n 2.sub \n 3.multiply \n 4.divid \n 5.exit ");
    int n = int.parse(stdin.readLineSync()!);
    switch (n) {
      case 1:
        print("Enter the first number: ");
        double n1 = double.parse(stdin.readLineSync()!);
        print("Enter the second number: ");
        double n2 = double.parse(stdin.readLineSync()!);
        print("$n1 + $n2 = ${n1 + n2}");
        break;
      case 3:
        print("Enter the first number: ");
        double n1 = double.parse(stdin.readLineSync()!);
        print("Enter the second number: ");
        double n2 = double.parse(stdin.readLineSync()!);
        print("$n1 * $n2 = ${n1 * n2}");
        break;
      case 2:
        print("Enter the first number: ");
        double n1 = double.parse(stdin.readLineSync()!);
        print("Enter the second number: ");
        double n2 = double.parse(stdin.readLineSync()!);
        print("$n1 - $n2 = ${n1 - n2}");
        break;
      case 4:
        print("Enter the first number: ");
        double n1 = double.parse(stdin.readLineSync()!);
        print("Enter the second number: ");
        double n2 = double.parse(stdin.readLineSync()!);
        print("$n1 / $n2 = ${n1 / n2}");
        break;
      case 5:
        i = n;
        break;
      default:
        print("the operation sign is uncorrect try again");
        break;
    }
  }
}
