import 'package:test/test.dart';

Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => "Dedy Wijaya");
}

void main() {
  test("Future Matcher", () {
    final name = getName();
    expect(name, completion(equals("Dedy Wijaya")));
  });
  test("Future Test", () async {
    final name = await getName();
    expect(name, "Dedy Wijaya");
  });
}
