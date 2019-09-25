import 'package:flutter_test/flutter_test.dart';

import 'package:music_stories/src/services/input_validators.dart';

void main() {
  group('Username validator tests.', () {
    test('Testing username as null value', () {
      final String result = InputValidators.username(null);
      expect(result, 'Username should not be empty!');
    });
    test('Testing username as empty string.', () {
      final String result = InputValidators.username('');
      expect(result, 'Username should not be empty!');
    });
    test('Testing username with less characters.', () {
      final String result = InputValidators.username('qw');
      expect(result, 'Username must contain minimum 5 characters!');
    });
    test('Testing username with special characters.', () {
      final String result = InputValidators.username('as&862)(-');
      expect(result, 'Username shouldn\'t contain special characters!');
    });
    test('Testing username with correct input.', () {
      final String result = InputValidators.username('ctrleffive');
      expect(result, null);
    });
  });
  group('Email validator tests.', () {
    test('Testing email as null value', () {
      final String result = InputValidators.email(null);
      expect(result, 'Email should not be empty!');
    });
    test('Testing email as empty string.', () {
      final String result = InputValidators.email('');
      expect(result, 'Email should not be empty!');
    });
    test('Testing with invalid email (email.com).', () {
      final String result = InputValidators.email('email.com');
      expect(result, 'Invalid email id!');
    });
    test('Testing with invalid email (%sah0a.com).', () {
      final String result = InputValidators.email('%sah0a.com');
      expect(result, 'Invalid email id!');
    });
    test('Testing with invalid email (%sah0a.com).', () {
      final String result = InputValidators.email('%sah0a.com');
      expect(result, 'Invalid email id!');
    });
    test('Testing with invalid email (email@ddd).', () {
      final String result = InputValidators.email('email@ddd');
      expect(result, 'Invalid email id!');
    });
    test('Testing with valid email id.', () {
      final String result = InputValidators.email('app.coder@outlook.in');
      expect(result, NullThrownError());
    });
  });
}