void main() {
  myUserName() {
    print("ZeroParadoxHome");
  }

  myUserName();

  printUserName() {
    print("I am ZeroParadox");
  }

  printUserName();

  returnUserName() {
    return "I am ZeroParadox";
  }

  print(returnUserName());

  print(returnUserName().toUpperCase());
  String stringUserName = returnUserName();
  print(stringUserName.toLowerCase());

  String myLoremIpsum() {
    return "Nisi in non tempor duis aliqua non qui proident quis ipsum dolor nulla aute pariatur.";
  }

  myLoremIpsum();

  int myRandomNumbers() {
    return 123456789;
  }

  myRandomNumbers();

  List myEmptyList() {
    return [];
  }

  myEmptyList();

  void myVoidFunction() {
    print("It's just a function to test and learn void");
    // Can't use return
  }

  myVoidFunction();

  print(myMapData());

  myPersonalDetails("ZeroParadox", "Home", 123);

  // print(printNullableString());

  print(userDataSet("A", 1, "USA").toUpperCase());

  superFunctionArguments(
    "localHost",
    999,
    macAddress: "0:0:0:0",
    ipAddress: "127.0.0.1",
    country: "Local",
    zipCode: 1,
  );

  printHello(name: "M");

  getNumberInput(values: [1, 2, 3, 4, 5], function: tripleNumber);

  const List<double> list3 = [2.5, 3.5];
  calculateRectangleParameters(list2: list3);

  showThisMessage(m: "I enjoy practicing Dart programming language");

  print(evenNumber(n: 18));

  print(sumNumbers(n1: 1, n2: 2, n3: 3));

  List<int> list4 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // list4.forEach((element) {
  //   print(element);
  // });
  list4.forEach(print);

  List<int> list5 = [10, 20, 30];
  list5.forEach((e) {
    e++;
    if (e case int z when e.isOdd) {
      print("$z is Odd");
    }
  });

  IntList list6 = List.of(list5);
  list6.addAll([40, 50]);
  print(list6.runtimeType);

  Greetings greetings;
  greetings = goodbye;
  print(greetings("ZeroParadoxHome"));

  print(checkNumber(number1: 5));

  print(sumNumbersWithForEach(list7: [10000, 1000, 100, 10, 1]));

  print(countStringLetters(sentence: "AaBbCcDdEeFf"));
}

Map<int, String> myMapData() {
  return {1: "Zero", 2: "Paradox", 3: "Home"};
}

void myPersonalDetails(String name, String house, int age) {
  print("My name is $name, and I'm $age years old");
}

// String? printNullableString() {
//   print("This function should return a nullable string");
// }

String userDataSet(String name, int age, [String? country = "Unknown"]) {
  if (country == null) {
    country == "Unknown";
  }
  return "Your name is $name, you are $age from $country country";
}

void superFunctionArguments(
  String name,
  int age, {
  required String macAddress,
  // required int ipAddress,
  required String ipAddress,
  String? country = "Unknown",
  int? zipCode = -1,
}) {
  print("$name, $age, $macAddress, $ipAddress, $country, $zipCode");
}

void hello({required String name}) {
  print("Hello dear, $name");
}

var printHello = hello;

int tripleNumber(int n) {
  return n * 3;
}

void getNumberInput({required List values, required Function function}) {
  for (int i in values) {
    var result = function(i);
    print("Input: $i, and result: $result");
  }
}

double rectangularPerimeter({required double x, required double y}) {
  return (x + y) * 2;
}

double areaOfRectangle({required double x, required double y}) {
  return x * y;
}

void calculateRectangleParameters({required List list2}) {
  if (list2.length == 2) {
    double i = list2[0];
    double e = list2[1];
    double perimeter = rectangularPerimeter(x: i, y: e);
    double area = areaOfRectangle(x: i, y: e);
    print("$perimeter, $area");
  }
}

void showThisMessage({required String m}) => print("I got this message: $m");

bool evenNumber({required int n}) => n.isEven;

int sumNumbers({required int n1, required int n2, required int n3}) =>
    n1 + n2 + n3;

typedef IntList = List<int>;

typedef StringDynamicMap = Map<String, dynamic>;

typedef MyNumberList<T> = List<T>;

String goodbye(String name) => "Goodbye dear, $name";

typedef Greetings = String Function(String name);

String checkNumber({required int number1}) {
  if (number1 >= 0) {
    if (number1 case int number2 when number1.isOdd) {
      return "$number2 is odd";
    } else if (number1.isEven) {
      return "$number1 is even";
    } else {
      return "number is $number1";
    }
  } else {
    return "$number1 is negative";
  }
}

num sumNumbersWithForEach({required List list7}) {
  num number3 = 0;
  list7.forEach((element) {
    number3 += element;
  });
  return number3;
}

void checkStatus({required int age}) {
  if (age < 18) {
    print("Minor");
  } else {
    print("Adult");
  }
}

int countStringLetters({required String sentence}) {
  int number4 = 0;
  for (int number5 = 0; number5 < sentence.length; number5++) {
    if (sentence[number5] == sentence[number5].toUpperCase()) {
      number4++;
    }
  }
  return number4;
}

void printEvenNumbers({required List list8}) {
  list8.forEach((element) {
    if (element.isEven) {
      print("$element is even");
    }
  });
}

void exitOnEvent({required String sentence1}) {
  OuterLoop:
  for (int number6 = 0; number6 < sentence1.length; number6++) {
    if (sentence1[number6] == "!") {
      break OuterLoop;
    }
  }
}

int checkEvenNumbers({required int n}) {
  if (n.isEven) {
    return n;
  }
  return 0;
}

int getNumbersList({
  required List list10,
  required Function checkNumbersFunction,
}) {
  for (int rawNum in list10) {
    int res = checkNumbersFunction(rawNum);
    return res;
  }
  return 0;
}

void printUnderTen() {
  int number9 = 0;
  while (number9 <= 10) {
    if (number9.isOdd) {
      print(number9);
      number9++;
    }
    number9++;
  }
}
