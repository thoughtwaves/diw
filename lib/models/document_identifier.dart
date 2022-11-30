class DocumentIdentifier {
  final String id;
  final String value;
  final String country;
  final String? dateOfExpiry;
  final DocType type;
  final bool isVerified;

  DocumentIdentifier({
    required this.id,
    required this.value,
    required this.country,
    this.dateOfExpiry,
    required this.type,
    this.isVerified = false
  });

}

enum DocType {
  PAN,
  SSN,
  ITIN,
  TIN,
  DRIVING_LICENSE,
  PASSPORT,
  VAT_ID,
  GSTIN
}