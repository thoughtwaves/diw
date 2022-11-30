import 'package:diw/models/address.dart';
import 'package:diw/models/document_identifier.dart';
import 'package:diw/models/email.dart';
import 'package:diw/models/phone_number.dart';

class User {
  final String name;
  final String id;
  List<DocumentIdentifier> documentIdentifiers;
  List<PhoneNumber> phoneNumbers;
  List<Email> emails;
  List<Address> addresses;

  User({
    required this.name,
    required this.id,
    required this.documentIdentifiers,
    required this.phoneNumbers,
    required this.emails,
    required this.addresses,
  });
  
}