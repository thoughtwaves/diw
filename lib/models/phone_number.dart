class PhoneNumber {
  final String id;
  final PhoneType type;
  final String number;
  final String countryCode;
  final bool isPrimary;
  final bool isVerified;

  PhoneNumber({
    required this.id,
    required this.type,
    required this.number,
    required this.countryCode,
    this.isPrimary = false,
    this.isVerified = false,
  });
}

enum PhoneType {
  Mobile,
  Home,
  Work,
  Fax,
  Business
}