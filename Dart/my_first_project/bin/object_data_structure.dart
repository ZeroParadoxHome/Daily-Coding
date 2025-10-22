import 'dart:vmservice_io';

void main(List<String> args) {
  int a = 23;
  print(a);
  String b = "Hello";
  print(b);
  double c = 19.999;
  print(c);
  bool d = false;
  print(d);
  num e = 85;
  print(e);
  var f = "XYZ";
  print(f);
  int g;
  double h;
  g = 75;
  print(g);
  h = 22.2;
  print(h);
  int i, j, k;
  i = 1;
  j = 2;
  k = 3;
  print(i + j + k);
  double l, m;
  l = 789.123;
  m = 786.456;
  print(l + m);
  int? n;
  print(n);
  // print(n!);

  var o = "100";
  print(a.runtimeType);
  num p = num.parse(o);
  // double p = double.parse(o);
  // int p = int.parse(o);
  print(p.runtimeType);
  int q = -2;
  print(q.abs());
  double r1 = 2.5;
  double r2 = 2.1;
  double r3 = 2.9;
  print(r1.ceil());
  print(r2.ceil());
  print(r3.ceil());
  double s1 = -2.5;
  double s2 = -2.1;
  double s3 = -2.9;
  print(s1.ceil());
  print(s2.ceil());
  print(s3.ceil());
  int t = 10;
  print(t.compareTo(15));
  num u = 3.85;
  print(u.floor());
  int v = 10;
  print(v.remainder(5));
  double w = 99.75;
  print(w.round());
  num x = 23.456;
  print(x.truncate());
  int y = 10;
  int z = -20;
  print(y.isNegative);
  print(z.isNegative);
  print(y.sign);
  print(z.sign);
  int aa = 0;
  print(aa.sign);
  int ab = 10;
  int ac = 13;
  print(ab.isEven);
  print(ac.isOdd);
  int ad = 1_000_000;
  print(ad);

  num ae = 10;
  num af = 2;
  print(ae + af);
  print(ae - af);
  print(ae * af);
  print(ae / af);
  print(ae ~/ af);
  print(ae % af);
  ae++;
  print(ae);
  af--;
  print(af);

  print(ae > af);
  print(ae < af);
  print(ae >= af);
  print(ae <= af);
  print(ae != af);
  print(ae == af);

  print(ae += af);
  print(ae -= af);
  print(ae *= af);
  print(ae /= af);
  print(ae ~/= af);
  print(ae %= af);

  num ag = 3;
  print(ag is int);
  print(ag is! double);
  print(ag is String);
  num ah = 5.5;
  print(ah is double);
  var ai = ah is! int;
  print(ai);

  int aj = 10;
  int ak = 25;
  print((aj < ak) && (ak > 15));
  print((aj < ak) || (ak > 30));
  print(!(aj == ak));

  int al = 10;
  int am = 55;
  print(al > 15 ? "al is greater than 15" : "al is less than or equal to 15");
  print(am > 15 ? "am is greater than 15" : "am is less than or equal to 15");
  var an;
  num ao = 63;
  print(an ?? ao);

  String ap = "I am learning Dart programming language";
  print(ap);
  String? aq;
  print(aq);
  // print(aq!);
  String ar = "Dart is fun";
  String as = "to learn";
  print(ar + " " + as);
  print("$ar $as");
  print(("$ar " * 3) + as);
  String at = "Ha ";
  String au = at * 3;
  print(au);
  int av = 5;
  print("Your age is about ${av * 3} years");
  String aw =
      "In dolore quis sunt consectetur eu velit quis ipsum esse enim laboris consectetur. ";
  print(aw.isEmpty);
  print(aw.isNotEmpty);
  print(aw.length);
  print(aw.toLowerCase());
  print(aw.toUpperCase());
  print(aw.trim());
  print(
    aw.replaceAll(
      "consectetur.",
      "Aliqua deserunt dolor voluptate irure commodo tempor ex fugiat duis.",
    ),
  );
  print(aw.split(" "));
  print(aw.substring(6, 15));
  print(av.toString().runtimeType);
  print(aw.contains("Lorem"));
  print(aw.contains("ipsum"));
  print(aw.startsWith("In"));
  print(aw.endsWith("laboris"));
  print(aw.indexOf("velit", 5));
  String ax =
      "Ullamco\n aliquip\t elit\\ nisi\' ad\" irure\n non\t eu\\ ullamco\' magna\" pariatur.";
  print(ax);

  bool ay = true;
  print(ay);
  bool az = false;
  print(az);
  bool aaa = 15 > 5;
  print(aaa);

  List aab = List.filled(5, 0);
  print(aab);
  List aac = List<int>.filled(6, 1);
  print(aac);
  List aad = List<String>.filled(7, "Dart");
  print(aad);
  aab[0] = 1;
  print(aab);
  List aae = [10, 20, 30, 40, 50];
  List<String> aaf = ["Apple", "Banana", "Mango"];
  print(aae);
  print(aaf);
  List<int> aag = [1, 2, 3, 4, 5, 6, 7, 8];
  aag.add(9);
  List<String> aah = ["A", "B", "C"];
  print(aah);
  List aai = List<int>.generate(3, (index) => index * index + index);
  print(aai);
  List aaj = List.generate(5, (index) => index + index % 2 == 0 ? 1 : 0);
  print(aaj);
  List aak = List.generate(
    9,
    (index) => index % 2 == 0 ? 1 : 0,
    growable: false,
  );
  print(aak);
  List aal = List.of(aaf);
  aal.add("Carrot");
  aal.add("lemon");
  print(aal);
  List aam = List.unmodifiable(
    aaj,
  ); // No change is allowed in indexes or adding a new value
  print(aam);
  List aan = List.from(<int>[333, 444, 555, 666, 777, 888, 999]);
  aan.add(0);
  print(aan);
  List<String?> aao = ["one"];
  List<String>? aap;
  List<String?>? aaq = ["a", "b", null];
  print(aao);
  print(aap);
  print(aaq);
  List aar = [1];
  List aas = ["Two"];
  aar.add(aas);
  print(aar);
  aar.addAll([2, 3, 4, 5]);
  print(aar);
  aar.insert(0, 0);
  aar.insertAll(0, [-2, -1]);
  print(aar);
  List aat = [10, 11, 12, 13, 14, 15, 16, 17];
  bool aau = aat.remove(10);
  print(aau);
  print(aat);
  var aav = aat.removeAt(5);
  print(aav);
  print(aat);
  aat.removeLast();
  print(aat);
  aat.removeRange(0, 3);
  print(aat);
  print(aat.first);
  print(aat.last);
  print(aat.isEmpty);
  print(aat.isNotEmpty);
  print(aat.length);
  print(aat.reversed);
  // print(aat.single);
  List aaw = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50];
  print(aaw.sublist(1, 7));
  aaw.shuffle();
  print(aaw);
  List<String> aax = ["Soccer", "Swimming", "Tennis"];
  Map<int, String> aay = aax.asMap();
  print(aay);
  List aaz = [1, "a", 2, "b", 3, "c"];
  var qwerty = aaz.whereType<int>();
  print(qwerty);
  aag.replaceRange(1, 5, [100, 99, 98]);
  print(aag);
  print(aag.firstWhere((element) => element * element % 2 == 0));
  var asdfg = aag.fold<int>(0, (i, j) => i + j);
  print(asdfg);
  var zxcvb = aag.reduce((i, j) => i - j);
  print(zxcvb);
  List aaaa = ["A", "a", "B", "b"];
  var aaaaa = aaaa.followedBy(["C", "c"]).toList();
  aaaaa.addAll(aaf);
  print(aaaaa);
  print(aaaaa.any((e) => e.contains("Apple")));
  print(aaaaa.every((e) => e.startsWith("A")));
  print(aaaaa.take(3));
}
