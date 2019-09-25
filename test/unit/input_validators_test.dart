import 'package:flutter_test/flutter_test.dart';

import 'package:music_stories/src/services/input_validators.dart';

void main() {
  group('Search validator tests.', () {
    test('Testing search input as null value', () {
      final String result = InputValidators.search(null);
      expect(result, 'Username should not be empty!');
    });
    test('Testing search input as empty string.', () {
      final String result = InputValidators.search('');
      expect(result, 'Username should not be empty!');
    });
    test('Testing search input with valid input.', () {
      final String result = InputValidators.search('ctrleffive');
      expect(result, null);
    });
  });
}