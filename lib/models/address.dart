class Address {
  final String id;
  final String addressLine1;
  final String? addressLine2;
  final String city;
  final String state;
  final String country;
  final String zip;
  final bool isPrimary;
  final bool isShippingAddress;
  final bool isBillingAddress;
  final bool isVerified;

  Address({
    required this.id,
    required this.addressLine1,
    this.addressLine2,
    required this.city,
    required this.state,
    required this.country,
    required this.zip,
    this.isPrimary = false,
    this.isShippingAddress = false,
    this.isBillingAddress = false,
    this.isVerified = false,

  });
}