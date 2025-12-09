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
}
