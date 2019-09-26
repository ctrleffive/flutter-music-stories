class InputValidators {
  static String username(String input) {
    if (input == null || input == '') {
      return 'Username should not be empty!';
    } else {
      return null;
    }
    // return null;
  }
  static String email(String input) {
    if (input == null || input == '') {
      return 'Email should not be empty!';
    } else {
      return null;
    }
    // return null;
  }
}