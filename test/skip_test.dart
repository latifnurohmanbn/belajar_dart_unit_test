@Skip('This is unit test still broken')
// tidak mengeksekusi unit test ini (skip)

import 'package:test/test.dart';

int sum(int a, int b) => a + b;
void main() {
  group('Test sum()', () {
    test(
      "positive",
      () {
        expect(sum(1, 2), equals(3)); // di cek hasilnya aopakah sama dengan 3
      },
    );
    test(
      "negative",
      () {
        expect(sum(10, -5), equals(5));
      },
    );
  });
}
