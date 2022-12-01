import 'package:test/test.dart';

void main() {
  var data = 'Latif';

  setUpAll(() {
    print(
        'Start Unit Test with '); // mengeksekusi setupAll untuk setiap awal function dan hanya sekali saja
  });

  setUp(() {
    data = 'Latif';
    print(data);
  });

  tearDown(() {
    print(data); // mengeksekusi program di setiap akhir function
  });
  // teardown juga bisa di eksekusi di setiap grup

  tearDownAll(() {
    print('End Unit Test');
    // mengeksekusi tearDownAll untuk setiap akhir function dan hanya sekali saja
  });

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
