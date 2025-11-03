void main() {
  int number1 = 3;
  if (number1 == 3) {
    print("Number is 3");
  }
  if (number1 != 4) {
    print("Number is not 4 and it is $number1");
  }
  int number2 = 31;
  if (number2 < 30) {
    print("Number is smaller than 30");
  } else {
    print('Number is greater than 30');
  }
  int number3 = 0;
  if (number3 > 0) {
    print("Number is positive/greater than 0");
  } else if (number3 < 0) {
    print("Number is negative/smaller than 0");
  } else {
    print("Number is equal to 0");
  }
  String name1 = "ZeroParadox";
  int age1 = 999;
  if ((name1 == "ZeroParadox" && age1 == 999) || age1 > 18) {
    print("Hello $name1 $age1");
  }
  int age2 = 18;
  if (age1 <= 9 || age2 >= 18) {
    print("I am still so young");
  }
  int number4 = 5;
  if (number4 >= 0) {
    if (number4 > 0) {
      print("Number is positive");
    } else {
      print("Number is 0");
    }
  } else {
    print("Number is negative");
  }
  int number5 = 6;
  if (number5 % 2 == 0) {
    if (number5 % 3 == 0) {
      print("Number can be divided to 2 and 3");
    } else {
      print("Number can only be divided to 2");
    }
  } else {
    if (number5 % 3 == 0) {
      print("Number can only be divided to 3");
    } else {
      print("Number can not be divided to 2 and 3");
    }
  }
  int number6 = -1;
  if (number6 < 0) {
    print("Score can't be less than 0");
  } else {
    if (number6 <= 100 && number6 > 80) {
      print("A+");
    } else if (number6 <= 80 && number6 > 60) {
      print("A");
    } else if (number6 <= 60 && number6 > 40) {
      print("B");
    } else {
      print("C");
    }
  }
  // bool isPublic = false;
  // String visibility = isPublic ? "Public" : "Private";
  // print(visibility);
  // String playerName(String? name) => name ?? "Guest";
  // String playerName(String? name) => name == null ? "Guest" : name;
  // String playerName(String? name) {
  //   if (name == null) {
  //     return "Guest";
  //   } else {
  //     return name;
  //   }
  // }
  // if (pair case [int x, int y] return Point(x, y));
  final Map<String, List> json;
  json = {
    "Person": ["ZeroParadoxHome", 19],
  };

  if (json case {"Person": [String name, int age]}) {
    print("$name is $age years old");
  } else {
    print("JSON is corrupted");
  }
  print(false != !true);
  int number7 = 75;
  if ((0 <= number7) && (number7 <= 100)) {
    if (number7 < 50) {
      print("Number is smaller than 50");
    } else if (number7 > 50) {
      print("Number is greater than 50");
    } else if (number7 == 50) {
      print("Number is 50");
    } // else if (number7 == 100) {
    //   print("Number is 100");
    // } else {
    //   print("Number is 0");
    // }
  } else {
    if (number7 < 0) {
      print("Number is smaller than 0");
    } else {
      print("Number is greater than 100");
    }
  }
  int number8 = 10;
  if ((number8 <= 10) && (number8 > 0)) {
    print("Number is 1 to 10");
  } else {
    print("Number is out of range");
  }
  String string1 = "A";
  switch (string1) {
    case "A+":
      {
        print("Excellent");
      }
    case "A":
      {
        print("Good");
      }
    case "B":
      {
        print("Not that bad");
      }
    case "C":
      {
        print("Need more try");
      }
    default:
      {
        print("An invalid choice");
      }
  }
  int number9 = 6;
  switch (number9) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      print("Weekday");

    case 6:
    case 7:
      print("Weekend");

    default:
      print("An invalid day");
  }
  String string2 = "Tiger";
  switch (string2) {
    case "Tiger":
      print("It's a tiger");
      continue alsoCat;

    case "Zebra":
      print("It's a zebra");

    alsoCat:
    case "Cat":
      print("It's a cat");
      break;

    default:
      print("Not an animal");
  }
  String string3 = "Friday";
  int number10 = switch (string3) {
    "Monday" => 1,
    "Tuesday" => 2,
    "Wednesday" => 3,
    "Thursday" => 4,
    "Friday" => 5,
    "Saturday" => 6,
    "Sunday" => 7,
    _ => 0,
  };
  print(number10);
  int number11 = 3;
  String string4 = switch (number11) {
    >= 1 && <= 5 => "Weekdays",
    6 || 7 => "Weekend",
    _ => "Date number is out of range",
  };
  print(string4);
  String string5 = "ZeroParadox";
  String string6 = "Home";
  switch (string5) {
    case "ZeroParadox" when string6 == "Home":
      {
        print("I am happy");
      }
    case "ZeroParadox" when string6 == "House":
      {
        print("I am sad");
      }
    case "ZeroParadoxHome":
      {
        print("ZeroParadoxHome");
      }
    default:
      {
        print("A mismatch expression");
      }
  }
  String string7 = switch (string5) {
    "ZeroParadox" when string6 == "Home" => "I am happy",
    "ZeroParadox" when string6 == "House" => "I am sad",
    _ => "A mismatch expression",
  };
  print(string7);
}
