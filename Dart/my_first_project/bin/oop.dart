import 'encapsulation.dart';

class MyFirstClass {}

class People {
  String? name;
  late int age;

  void working() {
    print("User is working");
  }

  void sleeping() {
    print("User is sleeping");
  }

  People() {
    print("Class created successfully");
  }
}

class Country {
  late String country;

  Country({required String country}) {
    this.country = country;
  }
}

class GreetingGivenUser {
  late String name;
  int? age;
  String? status;

  GreetingGivenUser({required this.name, required this.age, this.status}) {
    print("Hi dear $name, you are $age years old");
  }

  GreetingGivenUser.myCustomConstructor() {
    print("This is my custom constructor");
  }
}

class Customer {
  late String name;
  late int age;
  late String phoneNumber;
  int? zipCode;
  String? ipAddress;
  static int customerCount = 0;

  Customer({required this.name, required this.age, required this.phoneNumber}) {
    customerCount++;
  }

  Customer.getExtraInformation({
    required this.name,
    required this.age,
    required this.phoneNumber,
    required this.zipCode,
    required this.ipAddress,
  });

  @override
  String toString() {
    return "$name, $age, $phoneNumber, ${zipCode ?? "UNKNOWN"}, ${ipAddress ?? "UNKNOWN"}, ${Customer.customerCount}";
  }
}

class Student {
  late final String name;
  late int age;
  late String grade;

  Student({required this.name, required this.age, required this.grade});

  @override
  String toString() {
    return "$name, $age, $grade";
  }
}

class Programmer {
  late String firstName, lastName, knownSkill;
  late int age;
  late double payment;
  static int totalProgrammerCount = 0;
  String? email;
  String programmerEmailDomain = "@gmail.com";

  Programmer({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.knownSkill,
    required this.payment,
  }) {
    totalProgrammerCount++;
  }

  static int printTotalProgrammer() {
    return totalProgrammerCount;
  }

  void generateProgrammerEmail() {
    email = "$lastName$programmerEmailDomain";
    print(email);
  }

  double promoteProgrammer({required double value}) {
    return payment = (payment * value);
  }

  static String learnAboutDart() {
    print(Programmer.idkBut());
    return "\tI really enjoy learning about Dart programming Language";
  }

  static String idkBut() {
    return "I don't know,but I guess";
  }

  static void printUserEmail({required dynamic username}) {
    print(
      "${username.firstName}${username.lastName}${username.programmerEmailDomain}",
    );
  }

  @override
  String toString() {
    return "$firstName, $lastName, $age, $knownSkill, $payment, ${email ?? "UNKNOWN"}";
  }
}

class PiNumber {
  static const double piNumber = 3.14;

  @override
  String toString() {
    return piNumber.toString();
  }
}

enum Colors { black, white, red, green, blue }

class TestCascadeOperator {
  void cascade1() {
    print("This is the 1st cascade operator test");
  }

  void cascade2() {
    print("This is the 2nd cascade operator test");
  }

  void cascade3() {
    print("This is the 3rd cascade operator test");
  }
}

enum MonsterStatus { healthy, grounded, poisoned }

class Monster {
  final MonsterStatus status;

  Monster({this.status = .healthy});

  void checkMonsterStatus() {
    String monsterStatusResult = switch (status) {
      .healthy => "Monster is healthy and good to go",
      .grounded => "Monster is grounded and confused",
      .poisoned => "Monster is poisoned and suffering",
    };
    print(monsterStatusResult);
  }

  void eat() {
    print("Monster is eating");
  }
}

enum OrderStatus { pending, processing, shipped, delivered, cancelled }

class Order {
  late int id;
  String? customerName;
  int? age;
  late final double price;
  static int nextId = 1;
  late OrderStatus orderStatus;
  static const double tax = 0.09;
  static int totalCustomerCount = 0;

  Order({
    required this.id,
    required this.customerName,
    required this.age,
    required this.price,
    this.orderStatus = .pending,
  }) {
    totalCustomerCount++;
  }

  @override
  String toString() {
    return "$id, $customerName, $age, $price, $orderStatus";
  }
}

class OrderManager {
  static List<Order> orders = [];
}

class OrderProcessor {
  static String createNewOrder({
    required String name,
    required int age,
    required double price,
    OrderStatus newOrderStatus = .pending,
  }) {
    Order order = Order(
      id: Order.nextId,
      customerName: name,
      age: age,
      price: (price * Order.tax),
      orderStatus: newOrderStatus,
    );
    OrderManager.orders.add(order);
    Order.nextId++;
    return "$order";
  }

  static void findOrderById({required int orderID}) {
    for (Order i in OrderManager.orders) {
      if (i.id == orderID) {
        print("Found your order: $i");
      }
    }
  }

  static String updateOrderStatus({
    required int orderId,
    required OrderStatus updatedOrderStatus,
  }) {
    for (var i in OrderManager.orders) {
      if (i.id == orderId) {
        i.orderStatus = updatedOrderStatus;
        return "Order Status Updated";
      }
    }
    return "";
  }
}

//* In Dart, being private is not limited to current file
//! Being private is scoped to library level
// class Car {
//   int _speed;

//   Car({required int speed}) : _speed = speed;
// }

class Animal {
  String color = "White";
  String? breed;

  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  @override
  // ignore: overridden_fields
  String color = "Black";

  @override
  void eat() {
    super.eat();
    print("Dog is eating");
  }

  void bark() {
    print("Dog is barking!");
  }

  @override
  String toString() {
    return color;
  }
}

class AllTheCats {
  AllTheCats({required String name}) {
    print("$name is also a beautiful cat");
  }

  AllTheCats.types() {
    print("A new species of animals");
  }
}

class Cat extends AllTheCats {
  String name;
  Cat({required this.name}) : super(name: name) {
    print("Your cat name is $name");
  }
}

class Tiger extends AllTheCats {
  late String name;
  Tiger({required this.name}) : super(name: name) {
    print("$name is a big tiger");
  }

  Tiger.info() : super.types() {
    print("information about $name");
  }
}

class Point {
  final double x;
  final double y;
  late final double sum;

  //* An initializer list
  // ignore: prefer_initializing_formals
  Point({required double x, required double y}) : x = x, y = y {
    sum = x + y;
  }
}

abstract class Vehicles {
  int a = 0;

  void startCar();
  void stopCar();
  void drive();

  void buyCar() {
    print("I buy your desired car");
  }

  void sellCar() {
    print("I sell your desired car");
  }
}

class MyCustomCar extends Vehicles {
  @override
  void drive() {
    // TODO: implement drive
  }

  @override
  void startCar() {
    // TODO: implement startCar
  }

  @override
  void stopCar() {
    // TODO: implement stopCar
  }
}

abstract class Shape {
  late final int height;
  late final int width;

  void area();
}

class Rectangle extends Shape {
  Rectangle({required int height, required int width}) {
    this.height = height;
    this.width = width;
  }

  @override
  void area() {
    print("Your rectangle area equals to ${height * width}");
  }
}

class Triangle implements Shape {
  @override
  int height;

  @override
  int width;

  Triangle({required this.height, required this.width});

  @override
  void area() {
    print("Your triangle area equals to ${height * width * 0.5}");
  }
}

interface class Animals {
  // ignore: non_constant_identifier_names
  void AnimalEat() {
    print("Animals are eating");
  }
}

class Zebra extends Animals {}

class Pigeons implements Animals {
  @override
  // ignore: non_constant_identifier_names
  void AnimalEat() {
    print("Pigeons are eating");
  }
}

abstract interface class MyAbstractInterface {}

/* More practice here */

abstract class PublicTransportation {
  void goForward();
  void goBackward();
  void goLeft();
  void goRight();
  void stop() {
    print("Vehicle has stopped");
  }
}

class Bus extends PublicTransportation {
  @override
  void goBackward() {
    print("Bus starts to going forward");
  }

  @override
  void goForward() {
    print("Bus starts to going backward");
  }

  @override
  void goLeft() {
    print("Bus starts to going left side");
  }

  @override
  void goRight() {
    print("Bus starts to going right side");
  }
}

interface class Notification {
  void sendNewNotification() {
    print("New message received");
  }

  void newEmailNotification() {
    sendNewNotification();
  }

  void newSMSNotification() {
    sendNewNotification();
  }

  void newPushNotification() {
    sendNewNotification();
  }
}

abstract interface class Payments {
  void creditCard();
  void cryptocurrency();
  void payInPlace();
  void needVerify() => "Verification is needed";
  static const double fee = 1.5;
  void applyFee({required num price}) {
    price = price * Payments.fee;
    print(price);
  }
}

class PaymentRequest extends Payments {
  @override
  void creditCard() {
    print("Customer wants to pay with credit card");
  }

  @override
  void cryptocurrency() {
    print("Customer wants to pay with cryptocurrency");
  }

  @override
  void payInPlace() {
    print("Customer wants to pay int the place");
  }
}

abstract class Sea {
  void swimForward();
  void swumBackward();
  void skeleton();
}

class Shark extends Sea {
  @override
  void swimForward() {
    print("The shark is swimming forward");
  }

  @override
  void swumBackward() {
    print("The shark is swimming backward");
  }

  @override
  void skeleton() {
    print("The shark has a huge skeleton");
  }
}

class Whale extends Sea {
  @override
  void swimForward() {
    print("The whale is swimming forward");
  }

  @override
  void swumBackward() {
    print("The whale can swim toward the back side");
  }

  @override
  void skeleton() {
    print("The whale has the biggest skeleton");
  }
}

mixin Swimming {
  void swimming() {
    print("Swimming...");
  }
}

mixin Flying {
  void flying() {
    print("Flying...");
  }
}

class Duck with Swimming, Flying {}

class Fish with Swimming {}

mixin Hunter on Animal {
  void hunt() {
    print("Hunting...");
    eat();
  }
}

class Cheetah extends Animal with Hunter {}

abstract mixin class Musician {
  void playInstrument({required String instrument});
  void playPiano() => playInstrument(instrument: "Piano");
  void playFlute() => playInstrument(instrument: "Flute");
}

class Virtuoso extends Musician {
  @override
  void playInstrument({required String instrument}) {
    print("Plays $instrument beautifully");
  }
}

class Novice with Musician {
  @override
  void playInstrument({required String instrument}) {
    print("Plays $instrument poorly");
  }
}

abstract class Cache<T> {
  T getByKey({required String key});
  void setByKey({required String key, required T value});
}

class Foods<T, S, U> {
  late T rice;
  late S chicken;
  U? pizza;
}

//* E for element type in a collection:
class Iterables<E> {}

//* K and V for the key and value types in an associative collection:
class MapEntries<K, V> {}

class Variable<T> {
  T variable;
  Variable({required this.variable});
  @override
  String toString() {
    return "$variable";
  }
}

num getAvgValue<T extends num>({required T number1, required T number2}) =>
    (number1 + number2) / 2;

class TODO {
  final String? who;
  final String what;
  final String? when;

  const TODO({required this.what, this.who, this.when});
}

class FixMe {
  final String author;
  final String performer;
  final String action;

  FixMe({required this.author, required this.performer, required this.action});
}

extension ListAvgNumbers on List<num> {
  num calculateAvgAmount<T extends num>() {
    num avgNumber = 0;
    for (num number in this) {
      avgNumber += number;
    }
    return avgNumber / length;
  }
}

extension ListSumNumbers on List<int> {
  int calculateSumNumbers() {
    int sumNumbers = 0;
    for (int number in this) {
      sumNumbers += number;
    }
    return sumNumbers;
  }
}

extension ReturnPersianNumbers on String {
  String get returnPersianNumbers {
    const List<String> english = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];
    const List<String> persian = ["۱", "۲", "۳", "۴", "۵", "۶", "۷", "۸", "۹"];
    String string = this;
    for (int i = 0; i < english.length; i++) {
      string = string.replaceAll(english[i], persian[i]);
    }
    return string;
  }
}

class Factory {
  final String key;
  Factory._internal({required this.key});
  factory Factory({required String key}) {
    return Factory._internal(key: key);
  }
}

class Logger {
  late final String key;
  static final Map<String, Logger> _cache = {};

  Logger._internal({required this.key});

  factory Logger({required String key}) {
    if (_cache.containsKey(key)) {
      return _cache[key]!;
    }
    final Logger logger = Logger._internal(key: key);
    _cache[key] = logger;
    return logger;
  }
}

class Singleton {
  static final Singleton _instance = Singleton._internal();
  Singleton._internal();
  factory Singleton() => _instance;
}

final colorCodeWheel1 = (0, 0, 0);
(int, int, int) colorCodeWheel2 = (225, 225, 225);
(int r, int g, int b) colorCodeWheel3 = (123, 122, 121);
({int r, double g, String b}) mixedColorCode = (r: 69, g: 1.23, b: "5");
final String finalColorCode =
    "${mixedColorCode.r}, ${mixedColorCode.g}, ${mixedColorCode.b}";
({int a, int b}) swapper({required ({int a, int b}) records}) {
  var (a: a, b: b) = records;
  return (a: b, b: a);
}

({int? min, int? max}) findMinMax({required List<int> listOfNumbers}) {
  if (listOfNumbers.isEmpty) {
    return (min: null, max: null);
  }

  int min = listOfNumbers[0];
  int max = listOfNumbers[0];

  for (int i in listOfNumbers) {
    if (i < min) {
      min = i;
    }
  }
  for (int i in listOfNumbers) {
    if (i > max) {
      max = i;
    }
  }

  return (min: min, max: max);
}

typedef UserDataFormat = ({String name, int age});
UserDataFormat getUserData() {
  return (name: "ZeroParadoxHome", age: 123);
}

void main() {
  People person1 = People();
  person1.name = "ZeroParadox";
  person1.age = 19;
  person1.working();
  People person2 = People();
  person2.name = "ZeroParadoxHome";
  person2.age = 999;
  person2.sleeping();
  Country countries = Country(country: "USA");
  print(countries.country);
  GreetingGivenUser user1 = GreetingGivenUser(
    name: "ZeroParadoxHome",
    age: 19,
    status: "UNKNOWN",
  );
  print(user1.status);
  // ignore: unused_local_variable
  GreetingGivenUser user2 = GreetingGivenUser.myCustomConstructor();
  Customer customer1 = Customer(
    name: "ZPH",
    age: -1,
    phoneNumber: "+19099992609",
  );
  print(customer1);
  Customer customer2 = Customer.getExtraInformation(
    name: "HPZ",
    age: 999,
    phoneNumber: "+123456789",
    zipCode: 789,
    ipAddress: "127.0.0.1",
  );
  print(customer2);
  Student student1 = Student(name: "A", age: 3, grade: "PHD");
  print(student1);
  Programmer programmer1 = Programmer(
    firstName: "Zero",
    lastName: "Paradox",
    age: 99999,
    knownSkill: "Dart Programming Language",
    payment: 500_000_000,
  );
  programmer1.generateProgrammerEmail();
  print(programmer1);
  programmer1.promoteProgrammer(value: 1.09);
  print(programmer1);
  print(Programmer.learnAboutDart());
  Programmer.printUserEmail(username: programmer1);
  print(Programmer.totalProgrammerCount);
  PiNumber number = PiNumber();
  print(number);
  Colors aColor = .black;
  var result = switch (aColor) {
    .white => "White as snow",
    .red => "Red as roses",
    .green => "Green as grass",
    .blue => "Blue as sky",
    _ => Colors.black,
  };
  print(result);
  // TestCascadeOperator tco = TestCascadeOperator()
  TestCascadeOperator()
    ..cascade1()
    ..cascade2()
    ..cascade3();
  // ignore: unused_local_variable
  Monster monster1 = Monster()
    ..checkMonsterStatus()
    ..eat();
  Monster monster2 = Monster(status: .poisoned);
  monster2.checkMonsterStatus();
  OrderProcessor.createNewOrder(
    name: "ZeroParadoxHome",
    age: 333,
    price: 1_500_000,
  );
  OrderProcessor.createNewOrder(
    name: "ZeroParadox",
    age: 555,
    price: 3_500_000,
  );
  OrderProcessor.createNewOrder(
    name: "Paradox",
    age: 777,
    price: 5_500_000,
    newOrderStatus: OrderStatus.delivered,
  );
  print(OrderManager.orders);
  OrderProcessor.findOrderById(orderID: 2);
  print(OrderManager.orders);
  print(
    OrderProcessor.updateOrderStatus(
      orderId: 2,
      updatedOrderStatus: .processing,
    ),
  );
  print(OrderManager.orders);
  print(Order.totalCustomerCount);
  Car bmw = Car(speed: 230);
  bmw.setSpeed = 500;
  print(bmw.getSpeed);
  Employee employee1 = Employee(id: 1, name: "A John Doe", age: -1);
  print("${employee1.getId} | ${employee1.getName} | ${employee1.getAge}");
  Dog rex = Dog();
  rex.eat();
  Cat jig = Cat(name: "Jig");
  print(jig.name);
  Point p = Point(x: 1.65, y: 3.35);
  print(p.sum);
  Rectangle rectangle = Rectangle(height: 5, width: 3);
  rectangle.area();
  Triangle triangle = Triangle(height: 25, width: 15);
  triangle.area();
  Bus bus = Bus();
  bus.stop();
  Notification notification = Notification();
  notification.newPushNotification();
  PaymentRequest payment = PaymentRequest();
  payment.applyFee(price: 50_000);
  payment.cryptocurrency();
  payment.needVerify();
  Shark jimmy = Shark();
  Whale bob = Whale();
  List<Sea> fishes = [jimmy, bob];
  void inTheSea({required Sea breed}) {
    breed.skeleton();
  }

  for (var fish in fishes) {
    inTheSea(breed: fish);
  }

  Duck duck = Duck();
  duck.swimming();
  duck.flying();
  Fish fish = Fish();
  fish.swimming();
  Cheetah cheetah = Cheetah();
  cheetah.eat();
  cheetah.hunt();
  Virtuoso virtuoso = Virtuoso();
  virtuoso.playInstrument(instrument: "Violone");
  Foods<String, String, String> food1 = Foods<String, String, String>();
  food1.pizza = "Pepperoni";
  print(food1.pizza!);
  Variable<String> variable1 = Variable<String>(variable: "Variable");
  Variable<num> variable2 = Variable<num>(variable: 1);
  Variable<bool> variable3 = Variable<bool>(variable: false);
  print(variable1);
  print(variable2);
  print(variable3);
  print(getAvgValue<num>(number1: 1.5, number2: 3.25));
  @TODO(
    what: "Fix This part of the code",
    who: "ZeroParadoxHome",
    when: "By the end of today",
  )
  // ignore: unused_element
  void todo() {}
  List<double> myAvgList = [1.23, 4.56, 7.89];
  print(myAvgList.calculateAvgAmount());
  List<int> mySumList = [1, 3, 5, 7, 9, 11, 13, 15];
  mySumList.calculateSumNumbers();
  String myPersianString = "123456789AaBbCc@";
  print(myPersianString.returnPersianNumbers);
  Singleton singleton1 = Singleton();
  Singleton singleton2 = Singleton();
  Singleton singleton3 = Singleton();
  print(singleton1.hashCode);
  print(singleton2.hashCode);
  print(singleton3.hashCode);
  print(finalColorCode);
  print(swapper(records: (a: 20, b: 30)));
  final ({int? min, int? max}) getMinMax = findMinMax(
    listOfNumbers: [5, 3, 7, 0, -1],
  );
  print(
    "Minimum amount is ${getMinMax.min}, and maximum amount is ${getMinMax.max}",
  );
  var (:name, :age) = getUserData();
  print("$name, $age");
}
