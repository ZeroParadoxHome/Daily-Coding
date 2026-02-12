import 'dart:convert';
import 'dart:math' show Random;

String howManyYearsTo100({required String name, required int age}) =>
    "Hi $name, you are ${100 - age} to be 100 years old";

String evenOrOdd({required int number}) => number.isEven ? "Even" : "Odd";

List<int> checkBelowFive = <int>[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
int checker() {
  for (int i in checkBelowFive) {
    if (i < 5) return i;
  }
  return 0;
}

List<int> divisor({required int number}) {
  List<int> result = <int>[];
  for (int i = 0; i <= number; i++) {
    if (number % i == 0) result.add(i);
  }
  return result;
}

List<int> commonNumbersChecker({required List<int> a, required List<int> b}) =>
    a.toSet().intersection(b.toSet()).toList();

bool checkForPalindrome({required String sentence}) =>
    sentence.toLowerCase().split("").reversed.join() == sentence.toLowerCase();

List<int> checkForEven = <int>[1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
List<int> checkEven() => checkForEven.where((int e) => e.isEven).toList();

class GameOfGuess {
  static final Random random = Random();
  final int number = GameOfGuess.random.nextInt(100);
  String checkUserGuess({required int guess}) {
    int attempt = 0;
    if (guess == number) {
      attempt++;
      return "Attempt number $attempt is correct, the number is $number";
    } else if (guess > number) {
      attempt++;
      return "Your guess number $attempt is higher than number";
    } else {
      attempt++;
      return "Your guess number $attempt is less than number";
    }
  }
}

bool isPrime({required int number}) {
  if (number <= 1) return false;
  if (number == 2) return true;
  if (number.isEven) return false;
  for (int i = 3; i * i <= number; i += 2) {
    if (number % i == 0) return false;
  }
  return true;
}

({List<int> a, List<int> b}) listSplitter({required List<int> mainList}) =>
    (a: <int>[mainList.first], b: <int>[mainList.last]);

List<int> anotherListSplitter({required List<int> mainList}) {
  if (mainList.isEmpty) return <int>[];
  return <int>[mainList.first, mainList.last];
}

List<int> fibonacci({required int n}) {
  List<int> sequences = <int>[];
  if (n == 0) {
    return sequences;
  } else if (n == 1) {
    sequences.add(0);
  } else {
    if (n >= 2) {
      sequences.addAll(<int>[0, 1]);
      for (int i = 2; i < n; i++) {
        sequences.add(sequences[i - 2] + sequences[i - 1]);
      }
    }
  }
  return sequences;
}

List<int> removeDuplicates({required List<int> initialList}) =>
    initialList.toSet().toList();

String writeWordsBackward({required String sentence}) =>
    sentence.split(" ").reversed.join(" ");

class StrongPasswordGenerator {
  static final Random _random = Random.secure();
  String generate({int length = 32}) =>
      base64UrlEncode(List<int>.generate(length, (_) => _random.nextInt(256)));
}

class CowsAndBulls {
  final String randomNumber;
  CowsAndBulls()
    : randomNumber = (1000 + Random().nextInt(9999 - 1000)).toString();
  String checkCAB({required String guess}) {
    int cows = 0;
    int bulls = 0;
    List<String> secretDigits = randomNumber.split("");
    List<String> guessDigits = guess.split("");
    for (int i = 0; i < 4; i++) {
      if (guessDigits[i] == secretDigits[i]) {
        cows++;
      } else if (secretDigits.contains(guessDigits[i])) {
        bulls++;
      }
    }
    return "$cows cows and $bulls bulls";
  }
}

List<int> findMaximumAmount({required List<int> candidates}) => candidates
  ..sort()
  ..last;

int anotherFindMaximum({required List<int> candidates}) {
  int max = candidates[0];
  int result = 0;
  for (int i in candidates) {
    if (i > max) result = i;
  }
  return result;
}

const Map<String, String> birthdays = <String, String>{
  "Albert Einstein": "14/03/1879",
  "Benjamin Franklin": "17/01/1706",
  "Ada Lovlace": "10/12/1815",
};

String getBirthday({required String person}) => birthdays[person]!;
