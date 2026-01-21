import 'dart:async';

Future<void> fetchUserData() => Future.delayed(
  Duration(seconds: 3),
  () => print("Nulla ex nostrud anim Lorem anim."),
);

Future<String> getUserOrder({required String order}) =>
    Future.delayed(Duration(seconds: 3), () => order);

Future<String> createUserOrder({required String order}) async {
  var result = await getUserOrder(order: order);
  return "User order has been received as $result";
}

class EmployeeDatabase {
  int id;
  String firstName, lastName;
  EmployeeDatabase({
    required this.id,
    required this.firstName,
    required this.lastName,
  });
}

dynamic getEmployeeData({required int id}) async {
  await Future.delayed(Duration(seconds: 3));
  EmployeeDatabase employee = EmployeeDatabase(
    id: id,
    firstName: "ZeroParadox",
    lastName: "Home",
  );
  return employee;
}

Future<String> getDataWithAnError() {
  return Future.delayed(
    Duration(seconds: 3),
    () => throw "Error during getting your data process",
  );
}

Iterable<int> oddNumberGenerator({required int n}) sync* {
  while (n > 0) {
    if (n.isOdd) {
      yield n;
    }
    n--;
  }
}

Stream<int> evenNumberGenerator({required int n}) async* {
  while (n > 0) {
    if (n.isEven) {
      yield n;
    }
    n--;
  }
}

Future<void> main() async {
  Future<String> receiver1 = Future(
    () =>
        "Reprehenderit ea adipisicing commodo elit reprehenderit ullamco mollit amet sunt.",
  );
  receiver1.then((value) {
    print(value);
  });
  String text() => "Exercitation occaecat consequat sit mollit ipsum.";
  Future<String> receiver2 = Future.delayed(Duration(seconds: 3), text);
  receiver2.then((value) {
    print(value);
  });
  fetchUserData();
  print("Fetching user data for you...");
  Future<String> a = Future.delayed(
    Duration(seconds: 3),
    () => "Sint irure ullamco quis fugiat.",
  );
  String result = await a;
  print(result);
  print(await createUserOrder(order: "water"));
  var resultUserData = await getEmployeeData(id: 1);
  print(
    "The given ${resultUserData.id} user id is associated to user ${resultUserData.firstName}${resultUserData.lastName}",
  );
  try {
    await getDataWithAnError();
  } catch (e) {
    print("An error happened: $e");
  }

  List<int> streamDataset = [1, 2, 3, 4, 5, 6];
  Stream<int> stream1 = Stream<int>.fromIterable(streamDataset);
  stream1.listen((event) {
    print(event);
  });
  Stream<int> stream2 = Stream<int>.fromIterable(streamDataset);
  stream2.first.then((value) {
    print(value);
  });
  Stream<int> stream3 = Stream<int>.fromIterable(streamDataset);
  Stream broadcast = stream3.asBroadcastStream();
  print(broadcast.isBroadcast);
  broadcast.where((e) => e % 2 == 0).listen((value) {
    print(value);
  });
  broadcast.take(3).listen((value) {
    print(value);
  });
  broadcast.skip(5).listen((value) {
    print(value);
  });
  broadcast.takeWhile((element) => element < 3).listen((value) {
    print(value);
  });
  broadcast.skipWhile((element) => element > 3).listen((value) {
    print(value);
  });
  broadcast.single
      .then((value) {
        print(value);
      })
      .catchError((e) {
        print(e);
      });

  Stream stream = Stream.fromIterable(streamDataset);
  var singleStreamError = stream.listen(null);
  singleStreamError.onData((value) {
    print(value);
  });
  singleStreamError.onError((e) {
    print(e);
  });
  singleStreamError.onDone(() {
    singleStreamError.cancel();
    print("Done!");
  });

  oddNumberGenerator(n: 9).forEach(print);
  Stream<int> numbers = evenNumberGenerator(n: 15);
  numbers.listen((int value) {
    print(value);
  });
}
