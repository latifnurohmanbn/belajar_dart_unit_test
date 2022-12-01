import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hello $name'; // menampilkan hasilnya
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  test(
    "Test sayHello() with matcher",
    () {
      expect(sayHello('Latif'),
          endsWith('Latif')); // di cek apakah benar berakhiran 'Latif'
      expect(sayHello('Latif'),
          startsWith('Hello')); // di cek apakah benar berawalan 'Hello'
      expect(
          sayHello('Latif'),
          equalsIgnoringCase(
              'hello latif')); // di cek apakah benar sama dengan karakter 'hello latif' tanpa melihat huruf besar kecil nya
      expect(sayHello('Latif'),
          isA<String>()); // di cek apakah benar sama dengan hasilnya berbentuk String
    },
  );

  test(
    "Test sum() with matcher",
    () {
      expect(
          sum(1, 1), equals(2)); // di cek apakah benar hasilnya sama dengan 2
      expect(sum(1, 1),
          greaterThan(1)); // di cek apakah benar hasilnya lebih dari 1
      expect(sum(1, 1),
          lessThan(10)); // di cek apakah benar hasilnya kurang dari 10
    },
  );
}
