import 'dart:math';

String name([String? name]) => "One for ${name ?? "you"}, one for me. ";

class Leap {
  bool leapYear({required int year}) =>
      ((year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0)));
}

final Map<String, int> letterScore = <String, int>{
  "A": 1,
  "E": 1,
  "I": 1,
  "O": 1,
  "U": 1,
  "L": 1,
  "N": 1,
  "R": 1,
  "S": 1,
  "T": 1,
  "D": 2,
  "G": 2,
  "B": 3,
  "C": 3,
  "M": 3,
  "P": 3,
  "F": 4,
  "H": 4,
  "V": 4,
  "W": 4,
  "Y": 4,
  "K": 5,
  "J": 8,
  "X": 8,
  "Q": 10,
  "Z": 10,
};
int score({required String word}) {
  int value = 0;
  List<String> listOfLetters = word.split("");
  for (String i in listOfLetters) {
    i = i.toUpperCase();
    if (listOfLetters.isNotEmpty && letterScore.containsKey(i)) {
      value += letterScore[i]!;
    }
  }
  return value;
}

final Map<String, String> atbashMap = <String, String>{
  "a": "z",
  "b": "y",
  "c": "x",
  "d": "w",
  "e": "v",
  "f": "u",
  "g": "t",
  "h": "s",
  "i": "r",
  "j": "q",
  "k": "p",
  "l": "o",
  "m": "n",
  "n": "m",
  "o": "l",
  "p": "k",
  "q": "j",
  "r": "i",
  "s": "h",
  "t": "g",
  "u": "f",
  "v": "e",
  "w": "d",
  "x": "c",
  "y": "b",
  "z": "a",
};

class AtbashCipher {
  String encode({required String text}) {
    text = text.toLowerCase();
    String output = "";
    const List<String> digits = <String>[
      "0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
    ];
    int counter = 0;
    List<String> characters = text.split("");
    for (String i in characters) {
      if (atbashMap.containsKey(i)) {
        output += atbashMap[i]!;
        counter++;
      } else if (digits.contains(i)) {
        output += i;
        counter++;
      } else {
        continue;
      }
      if (counter == 5) {
        output += " ";
        counter = 0;
      }
    }
    return output.trimRight();
  }

  String decode({required String text}) {
    text = text.toLowerCase();
    String output = "";
    const List<String> digits = <String>[
      "0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
    ];
    List<String> characters = text.split("");
    for (String i in characters) {
      if (atbashMap.containsKey(i)) {
        output += atbashMap[i]!;
      } else if (digits.contains(i)) {
        output += i;
      } else {
        continue;
      }
    }
    return output;
  }
}

class EggCounter {
  int count({required int number}) {
    int counter = 0;
    while (number > 0) {
      if (number % 2 == 1) counter++;
      number ~/= 2;
    }
    return counter;
  }
}

class Etl {
  Map<String, int> transform({required Map<int, List<String>> legacy}) {
    Map<String, int> newMap = <String, int>{};
    legacy.forEach((int K, List<String> V) {
      for (String letter in V) {
        newMap[letter.toLowerCase()] = K;
      }
    });
    return newMap;
  }
}

class ArmstrongNumbers {
  bool isArmstrongNumber({required int number}) {
    String numberString = number.toString();
    int length = numberString.length;
    int sum = 0;
    for (String i in numberString.split("")) {
      sum += pow(int.parse(i), length).toInt();
    }
    return number == sum;
  }
}

class BigArmstrongNumbers {
  bool isArmstrongNumber({required String number}) {
    BigInt targetNumber = BigInt.parse(number);
    int length = number.length;
    BigInt sum = BigInt.zero;
    for (String i in number.split("")) {
      BigInt digit = BigInt.parse(i);
      sum += digit.pow(length);
    }
    return targetNumber == sum;
  }
}

class HighScores {
  final List<int> _scores;
  HighScores({required List<int> scores}) : _scores = scores;
  List<int> get scores => _scores;

  int latest() => scores.last;

  int personalBest() => scores.reduce((int a, int b) => a > b ? a : b);

  List<int> personalTopThree() {
    final List<int> sorted = List<int>.from(scores)
      ..sort((int a, int b) => b.compareTo(a));
    return sorted.take(3).toList();
  }
}

final Map<int, String> rhyme = <int, String>{
  1: "This is the horse and the hound and the horn",
  2: "that belonged to the farmer sowing his corn",
  3: "that kept the rooster that crowed in the morn",
  4: "that woke the priest all shaven and shorn",
  5: "that married the man all tattered and torn",
  6: "that kissed the maiden all forlorn",
  7: "that milked the cow with the crumpled horn",
  8: "that tossed the dog",
  9: "that worried the cat",
  10: "that killed the rat",
  11: "that ate the malt",
  12: "that lay in the house that Jack built.",
};

class House {
  String recite({required int startVerse, required int endVerse}) {
    List<String> verses = <String>[];
    while (startVerse <= endVerse) {
      List<String> lines = <String>[];
      for (int i = startVerse; i <= 12; i++) {
        lines.add(rhyme[i]!);
      }
      verses.add(lines.join("\n"));
      startVerse++;
    }
    return verses.join("\n\n");
  }
}

class DifferenceOfSquares {
  int squareOfSum({required int n}) => pow(((n * (n + 1)) ~/ 2), 2).toInt();

  int sumOfSquares({required int n}) =>
      ((n * (n + 1) * (2 * n + 1)) ~/ 6).toInt();

  int differenceOfSquares({required int n}) =>
      squareOfSum(n: n) - sumOfSquares(n: n);
}

class InvalidNucleotideException implements Exception {}

class NucleotideCount {
  Map<String, int> count({required String sequence}) {
    int nucleotideACount, nucleotideCCount, nucleotideGCount, nucleotideTCount;
    nucleotideACount = 0;
    nucleotideCCount = 0;
    nucleotideGCount = 0;
    nucleotideTCount = 0;
    for (String nucleotide in sequence.toUpperCase().split("")) {
      if (nucleotide != "A" &&
          nucleotide != "C" &&
          nucleotide != "G" &&
          nucleotide != "T") {
        throw InvalidNucleotideException();
      }
      if (nucleotide == "A") nucleotideACount++;
      if (nucleotide == "C") nucleotideCCount++;
      if (nucleotide == "G") nucleotideGCount++;
      if (nucleotide == "T") nucleotideTCount++;
    }
    return <String, int>{
      "A": nucleotideACount,
      "C": nucleotideCCount,
      "G": nucleotideGCount,
      "T": nucleotideTCount,
    };
  }
}

class AnotherNucleotideCount {
  Map<String, int> count({required String sequence}) {
    Map<String, int> result = <String, int>{"A": 0, "C": 0, "G": 0, "T": 0};
    for (String nucleotide in sequence.toUpperCase().split("")) {
      if (!result.containsKey(nucleotide)) {
        throw InvalidNucleotideException();
      }
      result[nucleotide] = result[nucleotide]! + 1;
    }
    return result;
  }
}

class Proverb {
  String recite({required List<String> pieces}) {
    if (pieces.isEmpty) return "";
    final List<String> lines = <String>[];
    for (int i = 0; i < pieces.length - 1; i++) {
      lines.add("For want of a ${pieces[i]} the ${pieces[i + 1]} was lost.");
    }
    lines.add("And all for the want of a ${pieces.first}.");
    return lines.join("\n");
  }
}

BigInt square({required int n}) {
  if (n < 1 || n > 64) {
    throw ArgumentError("square must be between 1 and 64");
  }
  BigInt grains = BigInt.one;
  for (int i = 1; i < n; i++) {
    grains *= BigInt.two;
  }
  return grains;
}

BigInt total() {
  BigInt sum = BigInt.zero;
  for (int i = 1; i <= 64; i++) {
    sum += square(n: i);
  }
  return sum;
}

enum Classification { equal, unequal, superlist, sublist }

class Sublist {
  Classification sublist({
    required List<int> first,
    required List<int> second,
  }) {
    if (first.length == second.length) {
      if (_isContained(inner: first, outer: second)) return .equal;
    }
    if (_isContained(inner: first, outer: second)) return .sublist;
    if (_isContained(inner: second, outer: first)) return .superlist;
    return .unequal;
  }

  bool _isContained({required List<int> inner, required List<int> outer}) {
    if (inner.isEmpty) return true;
    if (inner.length > outer.length) return false;
    for (int i = 0; i <= outer.length - inner.length; i++) {
      bool match = true;
      for (int j = 0; j < inner.length; j++) {
        if (outer[i + j] != inner[j]) {
          match = false;
          break;
        }
      }
      if (match) return true;
    }
    return false;
  }
}

class WordCount {
  Map<String, int> countWords({required String sentence}) {
    Map<String, int> result = <String, int>{};
    final RegExp exp = RegExp(r"[a-z0-9]+('[a-z0-9]+)*");
    Iterable<Match> matches = exp.allMatches(sentence.toLowerCase());
    for (Match match in matches) {
      String word = match.group(0)!;
      result[word] = (result[word] ?? 0) + 1;
    }
    return result;
  }
}

class Bob {
  String response({required String sentence}) {
    final bool hasLetter = RegExp(r"[A-Z]").hasMatch(sentence.toUpperCase());
    if (sentence.trim().isEmpty) {
      return "Fine. Be that way!";
    } else if (sentence.trimRight().endsWith("?") &&
        sentence == sentence.toUpperCase() &&
        hasLetter) {
      return "Calm down, I know what I'm doing!";
    } else if (sentence == sentence.toUpperCase() && hasLetter) {
      return "Whoa, chill out!";
    } else if (sentence.trimRight().endsWith("?")) {
      return "Sure.";
    } else {
      return "Whatever.";
    }
  }
}

const int earthYearInSeconds = 31_557_600;

final Map<String, double> orbitalPeriodInSeconds = <String, double>{
  "Mercury": 0.2408467 * earthYearInSeconds,
  "Venus": 0.61519726 * earthYearInSeconds,
  "Earth": 1.0 * earthYearInSeconds,
  "Mars": 1.8808158 * earthYearInSeconds,
  "Jupiter": 11.862615 * earthYearInSeconds,
  "Saturn": 29.447498 * earthYearInSeconds,
  "Uranus": 84.016846 * earthYearInSeconds,
  "Neptune": 164.79132 * earthYearInSeconds,
};

class SpaceAge {
  double age({required String planet, required int seconds}) => double.parse(
    (seconds / orbitalPeriodInSeconds[planet]!).toStringAsFixed(2),
  );
}

class Hamming {
  int distance({required String strand1, required String strand2}) {
    int hammingDistanceCount = 0;
    if (strand1.length != strand2.length) {
      throw ArgumentError("strands must be of equal length");
    }
    for (int i = 0; i < strand1.length; i++) {
      if (strand1[i] != strand2[i]) hammingDistanceCount++;
    }
    return hammingDistanceCount;
  }
}

DateTime addGigasecondTo({required final DateTime dateTime}) =>
    dateTime.add(Duration(seconds: pow(10, 9).toInt()));

class Raindrops {
  String convert({required int number}) {
    String output = "";
    if (number % 3 == 0) output += "Pling";
    if (number % 5 == 0) output += "Plang";
    if (number % 7 == 0) output += "Plong";
    return output.isEmpty ? number.toString() : output;
  }
}

class SquareRoot {
  int squareRoot({required int number}) {
    for (int i = 1; i <= number; i++) {
      if (i * i == number) {
        return i;
      }
    }
    return 0;
  }
}

class Strain {
  List<T> keep<T>({
    required List<T> collection,
    required bool Function(T) predicate,
  }) {
    List<T> result = <T>[];
    for (T element in collection) {
      if (predicate(element)) result.add(element);
    }
    return result;
  }

  List<T> discard<T>({
    required List<T> collection,
    required bool Function(T) predicate,
  }) {
    List<T> result = <T>[];
    for (T element in collection) {
      if (!predicate(element)) result.add(element);
    }
    return result;
  }
}

class SumOfMultiples {
  int sum({required List<int> items, required int level}) {
    int sum = 0;
    for (int i = 1; i < level; i++) {
      if (items.any((int item) => item != 0 && i % item == 0)) sum += i;
    }
    return sum;
  }
}

final Map<String, String> nucleotides = <String, String>{
  "A": "U",
  "C": "G",
  "G": "C",
  "T": "A",
};

class RnaTranscription {
  String toRna({required String sequence}) {
    String rna = "";
    for (String nucleotide in sequence.toUpperCase().split("")) {
      rna += nucleotides[nucleotide]!;
    }
    return rna;
  }
}

class Anagram {
  List<String> findAnagrams({
    required String targetWord,
    required List<String> candidates,
  }) {
    List<String> result = <String>[];
    String sortedTarget = (targetWord.toLowerCase().split("")..sort()).join();
    for (String candidate in candidates) {
      if (candidate.toLowerCase() == targetWord.toLowerCase()) continue;
      String sortedCandidate = (candidate.toLowerCase().split(
        "",
      )..sort()).join();
      if (sortedCandidate == sortedTarget) result.add(candidate);
    }
    return result;
  }
}

enum NumberStatus { perfect, abundant, deficient }

class PerfectNumbers {
  NumberStatus classify({required int number}) {
    int sum = 0;
    NumberStatus status = .perfect;
    if (number <= 0) throw ArgumentError();
    for (int i = 1; i <= number / 2; i++) {
      if (number % i == 0) sum += i;
    }
    if (sum == number) status = .perfect;
    if (sum > number) status = .abundant;
    if (sum < number) status = .deficient;
    return status;
  }
}

class ResistorColor {
  final List<String> colors = <String>[
    "black",
    "brown",
    "red",
    "orange",
    "yellow",
    "green",
    "blue",
    "violet",
    "grey",
    "white",
  ];
  int colorCode({required String color}) => colors.indexOf(color);
}

class CollatzConjecture {
  int steps({required int number}) {
    int steps = 0;
    if (number <= 0) throw ArgumentError("Only positive integers are allowed");
    while (number > 1) {
      if (number.isEven) {
        number = number ~/ 2;
        steps++;
      } else if (number.isOdd) {
        number = number * 3 + 1;
        steps++;
      }
    }
    return steps;
  }
}

String reverse({required String sentence}) =>
    sentence.split("").reversed.join();

class ResistorColorDuo {
  final List<String> _colors = <String>[
    "black",
    "brown",
    "red",
    "orange",
    "yellow",
    "green",
    "blue",
    "violet",
    "grey",
    "white",
  ];
  int value({required List<String> colors}) {
    String result = "";
    for (String color in colors.take(2)) {
      result += _colors.indexOf(color).toString();
    }
    return int.parse(result);
  }
}

class Isogram {
  bool isIsogram({required String word}) {
    String cleanString = word.toLowerCase().replaceAll(RegExp(r"[\s-]"), "");
    Set<String> uniqueLetters = cleanString.split("").toSet();
    return cleanString.length == uniqueLetters.length;
  }
}

class AnotherIsogram {
  bool isIsogram({required String word}) {
    String cleanWord = word
        .toLowerCase()
        .replaceAll(" ", "")
        .replaceAll("-", "");
    List<String> seenLetters = <String>[];
    for (String letter in cleanWord.split("")) {
      if (seenLetters.contains(letter)) {
        return false;
      }
      seenLetters.add(letter);
    }
    return true;
  }
}

class YetAnotherIsogram {
  bool isIsogram({required String word}) {
    word = word.toLowerCase().replaceAll("-", "").replaceAll(" ", "");
    return (word.split("").toSet().length == word.split("").length);
  }
}

class ResistorColorTrio {
  final List<String> _colors = <String>[
    "black",
    "brown",
    "red",
    "orange",
    "yellow",
    "green",
    "blue",
    "violet",
    "grey",
    "white",
  ];
  String label({required List<String> colors}) {
    int mainValue =
        (_colors.indexOf(colors[0]) * 10 + _colors.indexOf(colors[1])) *
        (pow(10, _colors.indexOf(colors[2])).toInt());
    if (mainValue >= 1e9 && mainValue % 1e9 == 0) {
      return "${mainValue ~/ 1e9} gigaohms";
    } else if (mainValue >= 1e6 && mainValue % 1e6 == 0) {
      return "${mainValue ~/ 1e6} megaohms";
    } else if (mainValue >= 1e3 && mainValue % 1e3 == 0) {
      return "${mainValue ~/ 1e3} kiloohms";
    } else {
      return "$mainValue ohms";
    }
  }
}

class NthPrime {
  int prime({required int number}) {
    if (number < 1) {
      throw ArgumentError("There is no zeroth prime");
    }
    int counter = 0;
    int candidate = 2;
    while (counter < number) {
      if (isPrime(n: candidate)) counter++;
      if (counter == number) return candidate;
      candidate++;
    }
    throw Exception("This code should not be reached");
  }

  bool isPrime({required int n}) {
    if (n < 2) return false;
    for (int i = 2; i * i <= n; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }
}

class Darts {
  int score({required double x, required double y}) {
    double distance = sqrt(pow(x, 2) + pow(y, 2));
    if (distance <= 1) {
      return 10;
    } else if (distance <= 5) {
      return 5;
    } else if (distance <= 10) {
      return 1;
    } else {
      return 0;
    }
  }
}

class Acronym {
  String abbreviate({required String sentence}) {
    String result = "";
    for (String word
        in sentence.replaceAll("-", " ").replaceAll("_", "").split(" ")) {
      if (word.isNotEmpty) result += word[0].toUpperCase();
    }
    return result;
  }
}

class Triangle {
  bool equilateral({required num a, required num b, required num c}) {
    if (!_isTriangle(a: a, b: b, c: c)) return false;
    return a == b && b == c;
  }

  bool isosceles({required num a, required num b, required num c}) {
    if (!_isTriangle(a: a, b: b, c: c)) return false;
    return a == b || a == c || b == c;
  }

  bool scalene({required num a, required num b, required num c}) {
    if (!_isTriangle(a: a, b: b, c: c)) return false;
    return a != b && a != c && b != c;
  }

  bool _isTriangle({required num a, required num b, required num c}) {
    if (a <= 0 || b <= 0 || c <= 0) return false;
    return (a + b >= c) && (b + c >= a) && (a + c >= b);
  }
}

class Pangram {
  bool isPangram({required String sentence}) {
    List<String> cleanSentence = sentence
        .toLowerCase()
        .replaceAll(RegExp(r"[^a-z]"), "")
        .split("");
    Set<String> alphabet = <String>{};
    for (String letter in cleanSentence) {
      alphabet.add(letter);
    }
    return alphabet.length == 26;
  }
}

class AnotherPangram {
  bool isPangram({required String sentence}) =>
      sentence
          .toLowerCase()
          .replaceAll(RegExp(r"[^a-z]"), "")
          .split("")
          .toSet()
          .length ==
      26;
}

class YetAnotherPangram {
  bool isPangram({required String sentence}) {
    Set<String> alphabet = Set<String>.from(
      "abcdefghijklmnopqrstuvwxyz".split(""),
    );
    Set<String> lettersInSentence = sentence
        .toLowerCase()
        .replaceAll(RegExp(r"[^a-z]"), "")
        .split("")
        .toSet();
    return lettersInSentence.containsAll(alphabet);
  }
}

class MatchingBrackets {
  bool isPaired({required String sentence}) {
    List<String> stack = <String>[];
    final Map<String, String> pairs = <String, String>{
      ")": "(",
      "]": "[",
      "}": "{",
    };
    for (String char in sentence.split("")) {
      if (pairs.containsValue(char)) {
        stack.add(char);
      } else if (pairs.containsKey(char)) {
        if (stack.isEmpty || stack.last != pairs[char]) {
          return false;
        }
        stack.removeLast();
      }
    }
    return stack.isEmpty;
  }
}

extension ConvertToRomanNumerals on int {
  String get toRoman {
    final Map<int, String> arabicToRoman = <int, String>{
      1000: "M",
      900: "CM",
      500: "D",
      400: "CD",
      100: "C",
      90: "XC",
      50: "L",
      40: "XL",
      10: "X",
      9: "IX",
      5: "V",
      4: "IV",
      1: "I",
    };
    int n = this;
    String r = "";
    arabicToRoman.forEach((int K, String V) {
      while (n >= K) {
        r += V;
        n -= K;
      }
    });
    return r;
  }
}

class ValueNotFoundException implements Exception {}

class BinarySearch {
  final List<int> listOfNumbers;
  BinarySearch({required this.listOfNumbers});
  int find({required int number}) {
    int start = 0, end = listOfNumbers.length - 1;
    while (start <= end) {
      int middle = (start + end) ~/ 2;
      if (listOfNumbers[middle] == number) return middle;
      if (listOfNumbers[middle] > number) end = middle - 1;
      if (listOfNumbers[middle] < number) start = middle + 1;
    }
    throw ValueNotFoundException();
  }
}

class Node {
  String data;
  Node? left;
  Node? right;
  Node({required this.data});
}

class BinarySearchTree {
  Node root;
  BinarySearchTree({required String initialData})
    : root = Node(data: initialData);

  void insert({required String data}) {
    _insertRecursive(currentNode: root, newData: data);
  }

  void _insertRecursive({required Node currentNode, required String newData}) {
    if (newData.compareTo(currentNode.data) <= 0) {
      if (currentNode.left == null) {
        currentNode.left = Node(data: newData);
      } else {
        _insertRecursive(currentNode: currentNode.left!, newData: newData);
      }
    } else {
      if (currentNode.right == null) {
        currentNode.right = Node(data: newData);
      } else {
        _insertRecursive(currentNode: currentNode.right!, newData: newData);
      }
    }
  }

  List<String> get sortedData {
    List<String> result = <String>[];
    _collectDataInOrder(node: root, list: result);
    return result;
  }

  void _collectDataInOrder({required Node? node, required List<String> list}) {
    if (node == null) return;
    _collectDataInOrder(node: node.left, list: list);
    list.add(node.data);
    _collectDataInOrder(node: node.right, list: list);
  }
}
