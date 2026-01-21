import 'dart:io';

Future<void> main() async {
  var config = File(r"./Dart/my_first_project/bin/assets/config.txt");
  late dynamic content;

  try {
    content = await config.readAsString();
    print(content.length);
    content = await config.readAsLines();
    print(content.length);
    print(await config.stat());
  } catch (e) {
    print(e);
  }

  var logFile = File(r"./Dart/my_first_project/bin/assets/log.txt");
  var container = logFile.openWrite(mode: FileMode.writeOnlyAppend);
  container.write(
    "Laboris ad ad quis est nostrud voluptate aliqua qui enim esse culpa aute.",
  );
  await container.flush();
  await container.close();
}
