class MyCustomError implements Exception {
  String myCustomError() {
    return "My custom error appears here";
  }
}

void main() {
  int calculate({required int number}) {
    return number % 0;
  }

  try {
    print(calculate(number: 5));
    // ignore: unused_catch_stack
  } on UnsupportedError catch (e, s) {
    print("An error occurred during the process: $e");
  }

  try {
    int r = 1;
    if (r > 0) {
      throw MyCustomError();
    }
  } on MyCustomError catch (e) {
    print(e.myCustomError());
  } finally {
    print("Operation is done!");
  }
}
