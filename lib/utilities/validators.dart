class AppValidators {
  /// Credit for all RegEx data goes to JamalBelilet's work, which can be
  /// found at: https://github.com/JamalBelilet/regexed_validator
  ///
  /// Check if value is a number
  static dynamic number(final String value) {
    try {
      double.parse(value);
    } on Exception catch (_) {
      return 'Value must be a valid number';
    }
    return null;
  }

  static final RegExp _ipRegex = RegExp(
    r'^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$',
  );

  static final RegExp _nameRegex = RegExp(
    r"^([A-Z][A-Za-z.'\-]+) (?:([A-Z][A-Za-z.'\-]+) )?([A-Z][A-Za-z.'\-]+)$",
  );

  static bool ip(final String input) => _ipRegex.hasMatch(input);
  static bool name(final String input) => _nameRegex.hasMatch(input);
}
