import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hello $name'; // menampilkan hasilnya
}

void main() {
  test(
    "Test sayHello",
    () {
      var response = sayHello('Dart');
      expect(response, 'Hello Dart'); // menampilkan ekspektasi
      // ekspektasinya Hello Dart, tapi aktualnya Hallo Dart
    },
  );
}
