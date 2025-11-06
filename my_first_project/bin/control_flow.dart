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
  for (int i = 0; i < 3; i++) {
    print(i);
  }
  for (int number12 = 1; number12 <= 10; number12++) {
    if (number12 % 2 == 0) {
      print(number12);
    }
    print(number12 % 2 == 0 ? number12 : "0");
  }
  int number13 = 1;
  for (int number14 = 7; number14 >= 1; number14--) {
    number13 *= number14;
  }
  print(number13);
  int number15 = 1;
  for (int number16 = 1; number16 <= 7; number16++) {
    number15 *= number16;
  }
  print(number15);
  var number17 = List.generate(7, (e) => e + 1).fold(1, (a, b) => a * b);
  print(number17);
  List list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  for (int i in list1) {
    print(i);
  }
  int number18 = 0;
  list1.forEach((i) => print("Position ${number18++} is assigned to $i"));
  int number19 = 0;
  while (number19 <= 10) {
    print(number19);
    number19++;
  }
  int number20 = 0;
  while (number20 <= 25) {
    if (number20 % 2 == 0) {
      print(number20);
    }
    number20++;
  }
  int number21 = 7;
  int number22 = 1;
  while (number21 >= 1) {
    number22 *= number21;
    number21--;
  }
  print(number22);
  int number23 = 1;
  int number24 = 1;
  while (number23 <= 7) {
    number24 = number23 * number24;
    number23++;
  }
  print(number24);
  int number25 = 10;
  do {
    print(number25);
    number25--;
  } while (number25 >= 0);
  int number26 = 15;
  while (number26 >= 5) {
    print(number26);
    number26--;
    if (number26 < 10) {
      break;
    }
  }
  for (int number27 = 0; number27 <= 10; number27++) {
    print(number27);
    if (number27 == 5) {
      break;
    }
  }
  for (int number28 = 1; number28 <= 5; number28++) {
    if (number28 == 3) {
      print("Now on 3");
      continue;
    }
  }
  int number27 = 5;
  while (number27 <= 13) {
    if (number27 % 2 == 0) {
      number27++;
      continue;
    }
    print(number27);
    number27++;
  }
  outerLoop:
  for (int x = 0; x <= 3; x++) {
    for (int y = 0; y <= 3; y++) {
      print("$x, $y");
      if (x == 2 && y == 3) {
        break outerLoop;
      }
    }
  }
  /* My own examples */
  for (int number28 = 1; number28 <= 5; number28++) {
    print(number28);
  }
  int number30 = 0;
  for (int number29 = 1; number29 <= 10; number29++) {
    number30 += number29;
  }
  print(number30);
  for (int number38 = 0; number38 <= 20; number38++) {
    if (number38 % 2 == 0) {
      print(number38);
    }
  }
  List<String> list2 = ["Zero", "Paradox", "Home"];
  for (String n in list2) {
    print(n);
  }
  int number32 = 0;
  for (int number31 = 0; number31 <= 50; number31++) {
    if (number31 % 3 == 0) {
      number32 += number31;
    }
  }
  print(number32);
  List<double> list3 = [18.47, 16.93, 19.12, 14.58, 12.76];
  List<double> list4 = [];
  for (double g in list3) {
    if (g > 15) {
      list4.add(g);
    }
  }
  print(list4);
  List<double> list5 = list3.toSet().difference(list4.toSet()).toList();
  print(list5);
  List<double> list6 = list3
      .where((element) => !list4.contains(element))
      .toList();
  print(list6);
  List<double> list7 = [];
  for (double s in list3) {
    if (!list4.contains(s)) {
      list7.add(s);
    }
  }
  print(list7);
  String string8 =
      "Aute reprehenderit enim laboris sint pariatur veniam exercitation excepteur.";
  int number33 = 0;
  string8.toLowerCase();
  for (int a = 0; a < string8.length; a++) {
    if (string8[a] == "a") {
      number33++;
    }
  }
  print(number33);
  int number34 = 0;
  List<int> list8 = [12000, 45000, 8000, 23000, 15000];
  for (int p in list8) {
    number34 += p;
  }
  print(number34);
  for (int number35 = 1; number35 <= 10; number35++) {
    for (int number36 = 1; number36 <= 10; number36++) {
      print(number35 * number36);
    }
  }
  List<int> list9 = [2, 4, 5, 8, 11, 12, 17];
  for (int f in list9) {
    if ((f % f == 0) && (f % 1 == 0) && (f % 2 != 0)) {
      print(f);
    }
  }
  for (double z in list3) {
    String string9 = switch (z) {
      >= 18 => "Perfect",
      >= 10 && < 18 => "Pass",
      < 10 => "Failed",
      _ => "An invalid grade",
    };
    print(string9);
  }
  for (double z in list3) {
    if (z >= 18) {
      print("Perfect");
    } else if ((z >= 10) && (z < 18)) {
      print("Pass");
    } else {
      print("Failed");
    }
  }
  int number37 = 0;
  while ((number37 <= 100) && (number37 >= 0)) {
    if ((number37 % 3 == 0) && (number37 % 5 == 0)) {
      print(number37);
      number37++;
    } else {
      number37++;
    }
  }
  list3.forEach((element) {
    if (element case int n when n.isEven) {
      print("$n is Even");
    } else {
      print("$element is Odd");
    }
  });
  int number39 = 10;
  while (number39 >= 0) {
    if (number39 == 5) {
      number39--;
      continue;
    }
    print(number39);
    number39--;
  }
  int number40 = 5;
  do {
    print(number40);
    number40--;
  } while (number40 == 5);
  operationOuterLoop:
  for (int number41 = 1; number41 <= 5; number41++) {
    for (int number42 = 1; number42 <= 5; number42++) {
      if (number41 * number42 == 12) {
        print("now on 12");
        break operationOuterLoop;
      }
    }
  }
  int number43 = 12345;
  int number44 = 0;
  String string10 = number43.toString();
  for (int number45 = 0; number45 < string10.length; number45++) {
    int number46 = int.parse(string10[number45]);
    number44 += number46;
  }
  print(number44);
}
