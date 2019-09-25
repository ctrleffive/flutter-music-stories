class InputValidators {
  static String search(String input) {
    if (input == null || input == '') {
      return 'Search term should not be empty!';
    } else {
      return null;
    }
    // return null;
  }
}