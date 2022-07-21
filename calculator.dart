import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  print("Enter the first number: ");
  double n1 = double.parse(stdin.readLineSync()!);
  print("Enter the operation sign: ");
  String n = stdin.readLineSync()!;
  print("Enter the second number: ");
  double n2 = double.parse(stdin.readLineSync()!);
  switch (n) {
    case "+":
      print("$n1 + $n2 = ${n1 + n2}");
      break;
    case "*":
      print("$n1 * $n2 = ${n1 * n2}");
      break;
    case "-":
      print("$n1 - $n2 = ${n1 - n2}");
      break;
    case "/":
      print("$n1 / $n2 = ${n1 / n2}");
      break;
    case "^":
      print("$n1 ^ $n2 = ${pow(n1, n2)}");
      break;
    default:
      print("the operation sign is uncorrect try again");
      break;
  }
}
