import 'package:test/test.dart';

void main() {
  var data = 'Latif';

  setUp(() {
    data = 'Latif';
    print(data);
  });

  tearDown(() {
    print(data); // mengeksekusi program di setiap akhir function
  });
  // teardown juga bisa di eksekusi di setiap grup

  group('Test String', () {
    test(
      "String first",
      () {
        data =
            '$data Nurohman'; // karena data 'Latif' itu sama di setiap testnya, maka di buat setup function
        // jika ingin menampilkan 'Latif', maka harus mengambil data dulu dari setup function
        expect(data, 'Latif Nurohman');
      },
    );

    test(
      "String Second",
      () {
        data = '$data Bayu';
        expect(data, 'Latif Bayu');
      },
    );
  });
}
