import 'dart:io';

class Person {
  late int _id;
  late String _name;
  late String _address;
  late double _age;

  String get getName {
    return _name;
  }

  set setName(String name) {
    _name = name;
  }

  int get getId {
    return _id;
  }

  set setId(int id) {
    _id = id;
  }

  String get getAddress {
    return _address;
  }

  set setAddress(String address) {
    _address = address;
  }

  double get getAge {
    return _age;
  }

  set setAge(double age) {
    _age = age;
  }

  Person() {
    stdout.write("Enter the person name : ");
    _name = stdin.readLineSync()!;
    stdout.write("Enter the person address : ");
    _address = stdin.readLineSync()!;
    stdout.write("Enter the person id : ");
    _id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter the person age : ");
    _age = double.parse(stdin.readLineSync()!);
  }

  void printdata() {
    print("");
    print("the name is $getName");
    print("the id is $getId");
    print("the address is $getAddress");
    print("the Age is $getAge");
  }
}

class Student extends Person {
  List student = [];
  late String email;
  late int phoneNum;
  late String subjects;
  late double degree;
  Map m = {};
  Student() {
    super.getName;
    super.getAddress;
    super.getAge;
    super.getId;
    stdout.write("Enter the student email : ");
    email = stdin.readLineSync()!;
    stdout.write("Enter the student phoneNum : ");
    phoneNum = int.parse(stdin.readLineSync()!);
    stdout.write("Enter the student subjects : ");
    subjects = stdin.readLineSync()!;
    stdout.write("Enter the student degree : ");
    degree = double.parse(stdin.readLineSync()!);
    m = {subjects: degree};
  }

  @override
  void printdata() {
    print("");
    super.printdata();
    print("the student email is $email");
    print("the student PhoneNum is $phoneNum");
    print("the Student degree is $m");
    succeded(degree);
  }

  void succeded(double degree) {
    if (degree < 50) {
      print("the student faild");
    } else {
      print("the student succeded");
    }
  }
}
