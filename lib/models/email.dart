class Email {
  final String id;
  final String email;
  final bool isPrimary;
  final bool isVerified;

  Email({
    required this.id,
    required this.email,
    this.isPrimary = false,
    this.isVerified = false,
  });
}