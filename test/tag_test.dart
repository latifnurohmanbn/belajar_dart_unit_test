@Tags(['buba', 'bayu'])

import 'package:test/test.dart';

void main() {
  test('test first', () {
    print('first');
  }, tags: ['first']);

  test('test second', () {
    print('second');
  }, tags: ['second']);
}
