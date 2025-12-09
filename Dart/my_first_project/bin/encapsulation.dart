// ignore_for_file: unused_field, prefer_final_fields

class Car {
  int _speed;

  Car({required int speed}) : _speed = speed;

  set setSpeed(int value) {
    _speed = value;
  }

  int get getSpeed => _speed;
}

class Employee {
  final int? _id;
  late String _name;
  int _age = 0;

  Employee({required int id, required String name, required int age})
    : _id = id,
      _name = name,
      _age = age;

  // set setId(int value) => _id = value;
  set setName(String value) => _name = value;
  set setAge(int value) => _age = value;

  int get getId => _id!;
  String get getName => _name;
  int get getAge => _age;
}
